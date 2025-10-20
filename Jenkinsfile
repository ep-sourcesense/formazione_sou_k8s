node {
  docker.image('maven:3.8.4-openjdk-11').inside('-v /var/run/docker.sock:/var/run/docker.sock') {
    stage('Checkout') {
      checkout scm
    }
    stage('Build') {
      sh 'mvn clean package'
    }
    stage('Test Connessione') {
      echo '✅ Jenkins si è connesso correttamente alla repo!'
    }
  }
}
