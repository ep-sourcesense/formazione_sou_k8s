pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('docker-hub-cred')  // ID credenziali Docker Hub su Jenkins
        IMAGE_NAME = "epsourcesense/flask-hello-world"
        IMAGE_TAG = "latest"
    }

    stages {
        stage('Checkout') {
            steps {
                // Clona il repo contenente la Flask app e Dockerfile
                git 'https://github.com/ep-sourcesense/formazione_sou_k8s.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${env.IMAGE_NAME}:${env.IMAGE_TAG}")
                }
            }
        }

        stage('Login Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'docker-hub-cred') {
                        echo "Logged into Docker Hub"
                    }
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    docker.image("${env.IMAGE_NAME}:${env.IMAGE_TAG}").push()
                }
            }
        }
    }
}
