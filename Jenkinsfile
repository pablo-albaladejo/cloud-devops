pipeline {
  agent any
   stages {
    stage('Test') {
      steps {
          sh 'cd my-app'
          sh 'yarn test'
      }
    }
   }
}