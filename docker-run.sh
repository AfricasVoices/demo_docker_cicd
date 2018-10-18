#!/usr/bin/env bash

set -e # Stop on errors

IMAGE_NAME=test-image
CONTAINER_NAME=test-container

# Build an image for this pipeline stage.
docker build -t "$IMAGE_NAME" .

# Create a container from the image that was just built.
docker container create --name "$CONTAINER_NAME"  -w "/app" "$IMAGE_NAME" pipenv run pytest

function finish {
    # Tear down the container when done.
    docker container rm "$CONTAINER_NAME" >/dev/null
}
trap finish EXIT

# Run the container
docker start -a -i "$CONTAINER_NAME"
