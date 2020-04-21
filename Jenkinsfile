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
          sh './run_docker'
      }
    }
   }
}