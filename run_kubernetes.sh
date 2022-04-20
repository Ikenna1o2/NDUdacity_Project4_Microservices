#!/usr/bin/env bash

# This is to run Docker Hub container with Kubernetes

# Step 1:
# This is your Docker ID/path
dockerpath=ikenna1o2/mlpredict:latest

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- run mlpredict --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
minikube kubectl -- get pods 

# Step 4:
# Forward the container port to a host
minikube kubectl port-forward mlpredict 8000:80