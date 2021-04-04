# PostgreSQL Docker image with Node.js

[![img-docker]][link-docker]
[![img-travis]][link-travis]

A Docker image including:
- [PostgreSQL][link-postgres]
- [Node.js][link-node] (_including npm, npx & co_)
- [Yarn][link-yarn]

You can use it exactly as you would use the official [PostgreSQL Docker image][link-postgres].

## Supported tags and respective `Dockerfile` links

- [`latest`](https://github.com/ivangabriele/postgres-node/blob/master/latest/Dockerfile)
    - `postgres:latest`
- [`alpine`](https://github.com/ivangabriele/postgres-node/blob/master/alpine/Dockerfile)
    - `postgres:alpine`
- [`13`](https://github.com/ivangabriele/postgres-node/blob/master/13/Dockerfile)
    - `postgres:13`
- [`13-alpine`](https://github.com/ivangabriele/postgres-node/blob/master/13/alpine/Dockerfile)
    - `postgres:13-alpine`
- [`12`](https://github.com/ivangabriele/postgres-node/blob/master/12/Dockerfile)
    - `postgres:12`
- [`12-alpine`](https://github.com/ivangabriele/postgres-node/blob/master/12/alpine/Dockerfile)
    - `postgres:12-alpine`
- [`11`](https://github.com/ivangabriele/postgres-node/blob/master/11/Dockerfile)
    - `postgres:11`
- [`11-alpine`](https://github.com/ivangabriele/postgres-node/blob/master/11/alpine/Dockerfile)
    - `postgres:12-alpine`
- [`10`](https://github.com/ivangabriele/postgres-node/blob/master/10/Dockerfile)
    - `postgres:10`
- [`10-alpine`](https://github.com/ivangabriele/postgres-node/blob/master/10/alpine/Dockerfile)
    - `postgres:10-alpine`
- [`9`](https://github.com/ivangabriele/postgres-node/blob/master/9/Dockerfile)
    - `postgres:9`
- [`9-alpine`](https://github.com/ivangabriele/postgres-node/blob/master/9/alpine/Dockerfile)
    - `postgres:9-alpine`

## Contribute

### Test

You need to have [Bats][link-bats] (`bats-core`) installed in order to run the test files:

```
bats ./tests
```

---

[img-docker]: https://img.shields.io/docker/pulls/ivangabriele/postgres-node?style=for-the-badge
[img-travis]: https://img.shields.io/travis/com/ivangabriele/docker-postgres-node/master?style=for-the-badge

[link-bats]: https://github.com/bats-core/bats-core
[link-docker]: https://hub.docker.com/repository/docker/ivangabriele/postgres-node
[link-node]: https://nodejs.org
[link-postgres]: https://hub.docker.com/_/postgres
[link-travis]: https://travis-ci.com/ivangabriele/docker-postgres-node
[link-yarn]: https://yarnpkg.com
