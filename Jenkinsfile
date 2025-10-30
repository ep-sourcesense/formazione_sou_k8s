pipeline {
    // 1. Definisci un agente per il livello pipeline
    agent { 
        docker { 
            image 'maven:3.8.1-jdk-11' 
        }
     }

    stages {
        stage('Test Connessione e Build') {
            steps {
                echo 'Connesso'
            }
        }
    }
}
