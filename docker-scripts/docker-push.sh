#!/bin/bash

# Navigate to the directory where your Dockerfile is located
cd /root/kubernetes/scalable-webapp/project-code

# Define variables
IMAGE_NAME="8755958480/finexo"
TAG="$(date +%Y-%m-%d)"

# Build the Docker image
docker build -t "$IMAGE_NAME:$TAG" .

# Push the Docker image to Docker Hub
docker push "$IMAGE_NAME:$TAG"

