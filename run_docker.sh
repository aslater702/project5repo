#!/usr/bin/env bash

## shell file that runs docker locally

# Step 1:
# Builds docker image and tags with project 5 tag
docker build --tag=project5 .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8000:80 project5
