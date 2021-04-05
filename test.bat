
docker build -f "./dockerfiles/latest.Dockerfile" -t "ivangabriele/postgres-node:latest" .
docker image ls
docker save -o "latest.tar" "ivangabriele/postgres-node:latest"
docker image prune -af --filter "label=repository=ivangabriele/postgres-node"
docker image ls
docker load -i "latest.tar"
docker image ls
docker image prune -af --filter "label=repository=ivangabriele/postgres-node"
docker image ls

@REM docker run -de POSTGRES_PASSWORD=p455w0rd --name "postgres-node_latest" "ivangabriele/postgres-node:latest"
@REM TIMEOUT /t 10
@REM docker exec "postgres-node_latest" which ls
@REM docker exec "postgres-node_latest" which psql
@REM docker exec "postgres-node_latest" which postgres

@REM docker stop postgres-node_latest

@REM docker rm postgres-node_latest
