#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag fro info
docker build . -t talkdeepak/captest:latest

# Step 2: 
# List docker images, this should list the newly created image also
docker image ls
