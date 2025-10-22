pipeline {
  // 1. Definisci un agente per il livello pipeline (necessario per l'operazione 'checkout' e per lanciare il container)
  agent any 
  
  stages {
    stage('Test Connessione e Build') {
      // 2. A livello di Stage, usa la sintassi compatta
      agent {
        dockerContainer 'maven:3.8.4-openjdk-11' // Usa dockerContainer per lo Stage
        // NOTA: 'reuseNode true' non è supportato qui. Se ti serve,
        // devi usare l'opzione 'docker' A LIVELLO DI PIPELINE o usare 'agent none' qui.
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