pipeline {
  agent {
    dockerContainer 'maven:3.8.4-openjdk-11'
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