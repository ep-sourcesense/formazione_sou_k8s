pipeline {
  agent {
    dockerContainer 'maven:3.8.4-openjdk-11'
    }
  stages {
    stage('Test Docker') {
        steps {
            sh 'docker --version'
            sh 'docker run --rm hello-world'
        }
    }
    stage('Test Connessione') {
        steps {
            echo '✅ Jenkins si è connesso correttamente alla repo!'
            }
        }
    }
}