#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=ololade/ml-microservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker --tag ml-microservice $dockerpath:latest

# Step 3:
# Push image to a docker repository
#docker commit b9a420cb6576 $dockerpath
docker push $dockerpath:latest