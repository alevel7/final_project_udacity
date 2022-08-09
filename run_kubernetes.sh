#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath='alevel7/udacity_001:predictor'

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment predictor-minikube --image=$dockerpath
kubectl expose deployment predictor-minikube --type=NodePort --port=8000

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/predictor-minikube-769ffdc5dc-nw4ll --address 0.0.0.0 8000:8000


