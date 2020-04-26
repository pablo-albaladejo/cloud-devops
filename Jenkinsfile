pipeline {
  agent any
   stages {
    stage('Checkout SCM') {
        steps {
            script {
                echo 'Checkout Git repository'
                checkout scm
            }
        }
    }
    stage('React') {
      steps {
        dir('my-app') {
            sh 'yarn install'
            sh 'yarn lint'
            sh 'yarn test'
            sh 'yarn build'
        }
      }
    }
    stage('Docker') {
      steps {
          sh 'docker build . --tag=$DOCKER_TAG'
          sh 'docker login -u $DOCKER_USER -p $DOCKER_PASSWORD'
          sh 'docker image push $DOCKER_TAG'
      }
    }
    stage('Kubernetes') {
      steps{
        withAWS(credentials: 'aws-kubernetes', region: 'us-east-2'){
		      sh 'aws eks --region us-east-2 update-kubeconfig --name cloud-devops-cluster'
          sh 'kubectl apply -f ./deployment/eks-deployment.yml'
          sh 'kubectl get svc'
		    }
	    }
    }
   }
}