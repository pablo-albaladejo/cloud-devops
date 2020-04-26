1.  run docker local
2.  push docker local
3.  run kubernetes local
4.  set up jenkins remote
5.  run docker remote
6.  create remote infra:
    https://docs.aws.amazon.com/eks/latest/userguide/getting-started-console.html
    6.1) Create eksClusterRole

        aws cloudformation create-stack --stack-name cloud-devops-eksClusterRole --template-body file://eksClusterRole.yml --region=us-east-2 --capabilities CAPABILITY_IAM

    6.2) Create VPC:
    https://amazon-eks.s3.us-west-2.amazonaws.com/cloudformation/2020-04-21/amazon-eks-vpc-private-subnets.yaml

    aws cloudformation create-stack --stack-name cloud-devops-eksVPC --template-body file://eksVPC.yml --region=us-east-2

    6.3) Create EKS Cluster:
    https://docs.aws.amazon.com/eks/latest/userguide/create-cluster.html
    https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html

    aws cloudformation create-stack --stack-name cloud-devops-eksCulster --template-body file://eksCluster.yml --region=us-east-2