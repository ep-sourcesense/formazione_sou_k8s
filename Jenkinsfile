pipeline {
  // 1. Definisci un agente per il livello pipeline (necessario per l'operazione 'checkout' e per lanciare il container)
  agent any 
  
  stages {
    stage('Test Connessione e Build') {
      // 2. A livello di Stage, usa la sintassi compatta
      agent {
        docker {
          image 'maven:3.8.4-openjdk-11'
          // Opzionale: Se vuoi riutilizzare il workspace del nodo 'any'
          // reuseNode true 
        }
      }
      steps {
        echo '✅ Jenkins si è connesso correttamente e il container è attivo!'
        // Esegui i comandi Maven qui dentro il container
        sh 'mvn --version'
        sh 'java -version'
      }
    }
  }
}