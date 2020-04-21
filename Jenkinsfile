pipeline {
  agent any
   stages {
    stage('Lint HTML') {
      steps {
          sh 'tidy -q -e ./linux_tweet_app *.html'
      }
    }
   }
}