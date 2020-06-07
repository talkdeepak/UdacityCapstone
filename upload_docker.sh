#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=talkdeepak/capstone
dockerpath=talkdeepak/captest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username $1 --password $2 
docker tag caps $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest
