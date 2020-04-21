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
    stage('Test') {
      steps {
          dir('my-app') {
            sh 'yarn test'
          }
      }
    }
   }
}