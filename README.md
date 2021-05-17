# PostgreSQL Docker image with Node.js

[![img-docker]][link-docker]
[![img-github-actions]][link-github-actions]

A Docker image including:

- [PostgreSQL][link-postgres]
- [Node.js][link-node] (_including npm, npx & co._)
- [Yarn][link-yarn]

You can use it exactly as you would use the official [PostgreSQL Docker image][link-postgres].

The images are automatically updated on a daily basis.

## Supported tags and respective `Dockerfile` links

By default, Node.js v14 is installed. You can add `-node16` to use Node.js v16 instead.

- [`13`, `13-node16`, `latest`, `latest-node16`](https://github.com/ivangabriele/postgres-node/blob/master/dockerfiles/13.Dockerfile)
  - `postgres:13`
- [`12`, `12-node16`](https://github.com/ivangabriele/postgres-node/blob/master/dockerfiles/12.Dockerfile)
  - `postgres:12`
- [`11`, `11-node16`](https://github.com/ivangabriele/postgres-node/blob/master/dockerfiles/11.Dockerfile)
  - `postgres:11`
- [`10`, `10-node16`](https://github.com/ivangabriele/postgres-node/blob/master/dockerfiles/10.Dockerfile)
  - `postgres:10`
- [`9`, `9-node16`](https://github.com/ivangabriele/postgres-node/blob/master/dockerfiles/9.Dockerfile)
  - `postgres:10`

## Contribute

### Test

You need to have [Bats][link-bats] (`bats-core`) installed in order to run the test files:

```shell
bats ./tests
```

---

[img-docker]: https://img.shields.io/docker/pulls/ivangabriele/postgres-node?style=for-the-badge
[img-github-actions]:
  https://img.shields.io/github/workflow/status/ivangabriele/docker-postgres-node/Test%20&%20Release/master?label=Test%20%26%20Release&style=for-the-badge

[link-bats]: https://github.com/bats-core/bats-core
[link-docker]: https://hub.docker.com/repository/docker/ivangabriele/postgres-node
[link-node]: https://nodejs.org
[link-postgres]: https://hub.docker.com/_/postgres
[link-github-actions]: https://github.com/ivangabriele/docker-postgres-node/actions/workflows/tests-and-release.yml
[link-yarn]: https://yarnpkg.com
