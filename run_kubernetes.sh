  
#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

#Start & Stop minikube locally
#$ minikube start --vm-driver virtualbox
#$ minikube delete

# Step 1:
# This is your Docker ID/path
dockerpath="pabloalbaladejo/cloud-devops"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run cloud-devops --image="$dockerpath" --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward -n default deployment/cloud-devops 8000:80