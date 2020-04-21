pipeline {
  agent any
   stages {
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
   }
}