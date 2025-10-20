pipeline {
    agent {
        docker {
        image 'maven:3.8.4-openjdk-11' // immagine container agente
        args '-v /var/run/docker.sock:/var/run/docker.sock' // se serve accesso a Docker dentro container
        }
    } 
    stages {
        stage('Test Connessione') {
            steps {
                echo '✅ Jenkins si è connesso correttamente alla repo!'
            }
        }
    }
}
