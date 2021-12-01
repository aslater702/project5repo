#!/usr/bin/env bash

## shell file that runs docker locally

# Step 1:
# Builds docker image and tags with project tag
docker build --tag=aslaterproj .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8000:80 aslaterproj
