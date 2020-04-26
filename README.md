1.  run docker local
2.  push docker local
3.  run kubernetes local
4.  set up jenkins remote
5.  run docker remote
6.  create remote infra:
    https://docs.aws.amazon.com/eks/latest/userguide/getting-started-console.html

    6.1) Create VPC:
    https://amazon-eks.s3.us-west-2.amazonaws.com/cloudformation/2020-04-21/amazon-eks-vpc-private-subnets.yaml

        aws cloudformation create-stack --stack-name cloud-devops-vpc-network --template-body file://./infra/vpc/network.yml --region=us-east-2

    6.2) Create eksClusterRole
        aws cloudformation create-stack --stack-name cloud-devops-eks-cluster-role --template-body file://./infra/vpc/cluster.yml --region=us-east-2 --capabilities CAPABILITY_IAM


    6.3) Create EKS Cluster:
    https://docs.aws.amazon.com/eks/latest/userguide/create-cluster.html
    https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html

    aws cloudformation create-stack --stack-name cloud-devops-eks-culster --template-body file://./infra/eks/cluster.yml --region=us-east-2


7. Launch a managed node group

   7.1) Create Amazon EKS worker node role
   aws cloudformation create-stack --stack-name cloud-devops-eks-nodegroup-role --template-body file://./infra/vpc/nodegroup.yml --region=us-east-2 --capabilities CAPABILITY_IAM

   7.2) Create Amazon EKS Nodegroup
   https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html

   aws cloudformation create-stack --stack-name cloud-devops-eks-nodegroup --template-body file://./infra/eks/nodegroup.yml --region=us-east-2

8. Create a kubeconfig file
   8.1) update-kubeconfig
   aws eks --region us-east-2 update-kubeconfig --name cloud-devops-cluster

   8.2) Test config
   kubectl get svc

9. 
