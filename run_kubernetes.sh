#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="nandakumarthiagarajan/proj-udacity-devops-microservices"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run projectudacitydevops --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/projectudacitydevops 8083:80
