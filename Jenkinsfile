pipeline {
  agent {
    docker {
      image 'maven:3.8.4-openjdk-11'
      args '-v /var/run/docker.sock:/var/run/docker.sock'
    }
  }
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage('Test Connessione') {
      steps {
        echo '✅ Jenkins si è connesso correttamente alla repo!'
      }
    }
  }
}
