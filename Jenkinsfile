pipeline {
  agent any
   stages {
    stage('Test') {
      steps {
          dir('my-app') {
            sh 'yarn test'
          }
      }
    }
   }
}