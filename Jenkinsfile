pipeline {
  agent any
   stages {
    stage('Checking out git repo') {
        steps {
            script {
                echo 'Checkout Git repository'
                checkout scm
            }
        }
    }
    stage('Prepare') {
      steps {
        dir('my-app') {
            sh 'yarn install'
        }
      }
    }
    stage('Lint') {
      steps {
        dir('my-app') {
            sh 'yarn lint'
        }
      }
    }
    stage('Test') {
      steps {
          dir('my-app') {
            sh 'yarn test'
          }
      }
    }
    stage('Build') {
      steps {
          dir('my-app') {
            sh 'yarn build'
          }
      }
    }
   }
}