#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=doankimdinh/udacity_microservice:v1
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run my-app --image=doankimdinh/udacity_microservice:v1 --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
echo "Please wait for 10 seconds for pod to come up"
kubectl port-forward my-app 8080:80
kubectl logs --selector app=my-app
