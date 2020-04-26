aws eks --region us-east-2 update-kubeconfig --name cloud-devops-cluster
kubectl apply -f ./deployment/eks-deployment.yml
kubectl set image deployment/cloud-devops-deploy cloud-devops-pod=pabloalbaladejo/cloud-devops:latest --record
kubectl get deployments
kubectl get pods
kubectl get nodes
kubectl get svc
kubectl rollout status deployment.v1.apps/cloud-devops-deploy