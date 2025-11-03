pipeline {
    agent { 
        docker { 
            image 'maven:3.8.1-jdk-11' 
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
     }

    environment {
        IMAGE_NAME = "epsourcesense/flask-app-example"
        IMAGE_TAG = "latest"
        DOCKER_HUB_CREDENTIALS = "dockerhub-credentials" // ID credenziali Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${IMAGE_NAME}:${IMAGE_TAG}")
                }
            }
        }

        stage('Login to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: "${DOCKER_HUB_CREDENTIALS}", 
                                                  usernameVariable: 'DOCKER_USER', 
                                                  passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                sh "docker push ${IMAGE_NAME}:${IMAGE_TAG}"
            }
        }
    }

    post {
        always {
            echo "Pipeline completata."
        }
    }
}
