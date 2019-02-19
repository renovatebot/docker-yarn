const fs = require('fs-extra');
const got = require('got');
const semver = require('semver');
const util = require('util');
const exec = util.promisify(require('child_process').exec);

async function getMaximumVersion() {
  const pJson = JSON.parse(await fs.readFile('package.json'));
  return pJson.dependencies.yarn;
}

async function getAllVersions() {
  const res = (await got('https://registry.npmjs.org/yarn', { json: true })).body;
  return Object.keys(res.versions);
}

(async () => {
  const minVersion = '1.0.0';
  const maxVersion = await getMaximumVersion();
  const allVersions = await getAllVersions();
  const filteredVersions = allVersions
    .filter(version => version === minVersion || semver.gt(version, minVersion))
    .filter(
      version => version === maxVersion || semver.lt(version, maxVersion)
    );
  for (const version of filteredVersions) {
    const image = `renovate/yarn:${version}`;
    let oldSha;
    try {
      await exec(`docker pull ${image}`);
      console.log(`Pulled ${image} from Docker Hub`);
      oldSha = (await exec(
        `docker image inspect --format='{{.ID}}' ${image}`
      )).stdout.trim();
      console.log(`Current sha is ${oldSha}`);
    } catch (err) {
      console.log('Image not found on Docker Hub: ' + image);
    }
    let { stdout, stderr } = await exec(
      `docker build --build-arg YARN_VERSION=${version} . -t ${image}`
    );
    if (stderr) {
      console.log(stderr);
    }
    const newSha = (await exec(
      `docker image inspect --format='{{.ID}}' ${image}`
    )).stdout.trim();
    if (newSha === oldSha) {
      console.log('Image is unchanged');
    } else {
      console.log(stdout);
      console.log(`New sha is ${newSha}`);
      if (oldSha) {
        console.log(`Overwriting old sha ${oldSha} with new sha ${newSha}`);
      }
      console.log('Pushing image to Docker Hub');
      try {
        ({ stdout, stderr } = await exec(`docker push ${image}`));
        console.log(stdout);
        console.log(stderr);
      } catch (err) {
        console.log(err);
        console.log('Error pushing image to Docker Hub');
      }
    }
  }
})();
