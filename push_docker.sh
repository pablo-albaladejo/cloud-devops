#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="pabloalbaladejo/cloud-devops"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag cloud-devops $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath 