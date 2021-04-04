echo "🗑️ Pruning containers…"
docker stop "$(docker container ls -aq --filter name=^postgres)"
docker rm "$(docker container ls -aq --filter name=^postgres)"

echo "🗑️ Pruning images…"
docker image prune -af --filter "label=repository=${DOKER_HUB_REPOSITORY}"
