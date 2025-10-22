pipeline {
  agent any // o agent { label 'il_tuo_agente_con_docker' }
  
  stages {
    stage('Esegui con Maven Container') {
      agent {
        // Questo fa eseguire la stage successiva DENTRO il container Docker
        docker {
          image 'maven:3.8.4-openjdk-11'
          // Aggiungi un'opzione per riutilizzare l'agente principale, se utile
          // reuseNode true 
        }
      }
      steps {
        echo '✅ Jenkins si è connesso correttamente alla repo!'
        // Puoi anche eseguire comandi che verificano l'immagine, ad esempio
        sh 'mvn --version' 
        sh 'java -version'
      }
    }
  }
}