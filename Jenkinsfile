pipeline {
  agent any
   stages {
    stage('Test') {
      steps {
          sh 'cd my_app',
          sh 'yarn test'
      }
    }
   }
}