if [ ! "$(docker ps -q -f name=demo)" ]; then
    docker stop demo

# If it exists, remove it

    if [ "$(docker ps -aq -f status=exited -f name=demo)" ]; then
        docker rm demo
    fi
fi
docker build -t demo .  &&  \
docker run --name demo -p 5432:5432 \
-e POSTGRES_USER=demo \
-e POSTGRES_PASSWORD=demo \
-e POSTGRES_DB=demo demo \
