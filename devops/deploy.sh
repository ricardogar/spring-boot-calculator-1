export DOCKER_HOST=tcp://localhost:4243
export hostExposePort=$1
echo "hostExposePort: ${hostExposePort}"

docker build -f src/main/docker/Dockerfile -t calculator:1.0 .
docker run --rm -d -p ${hostExposePort}:8082 --name calculator_instance${hostExposePort} calculator:1.0
docker ps --filter "name=calculator_instance${hostExposePort}"
