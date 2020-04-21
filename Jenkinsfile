pipeline {
  agent any
   stages {
    stage('Lint HTML') {
      steps {
          sh 'tidy -q -e --show-warnings no ./linux_tweet_app/*.html'
      }
    }
   }
}