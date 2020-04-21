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
          sh 'docker build . --tag=pabloalbaladejo/cloud-devops'
          sh 'docker login -u ${DOCKER_USER} -p ${DOCKER_PASSWORD}'
          sh 'docker image push pabloalbaladejo/cloud-devops'
      }
    }
   }
}