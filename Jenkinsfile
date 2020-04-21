pipeline {
  agent any
   stages {
    stage('checkout scm') {
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
            sh 'echo "Install"'
            sh 'yarn install'
            sh 'echo "Lint"'
            sh 'yarn lint'
            sh 'echo "Test"'
            sh 'yarn test'
            sh 'echo "Build"'
            sh 'yarn build'
        }
      }
    }
   }
}