set -e

docker build -f docker/Dockerfile2 -t <your_name>/datasette .
docker push <your_name>/datasette
