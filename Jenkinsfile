pipeline {
    agent any
    

    environment {
        DOCKER_HUB_CREDENTIALS = '10'
        DOCKER_IMAGE_NAME = 'testapp'
        DOCKER_IMAGE_TAG = 'latest'
    }
    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from GitHub
                // git 'https://github.com/your-username/your-repo.git'
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                // Build Docker image
                script {
                    docker.build("${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}", "-f ./Dockerfile .")
                }
            }
        }
        
        stage('Push') {
            steps {
                // Push Docker image to Docker Hub
                script {
                    docker.withRegistry('https://index.docker.io/testapp:latest', '10') {
                        docker.image("${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}").push()
                    }
                }
            }
        }
    }
    
    post {
        success {
            echo 'Build and push to Docker Hub succeeded!'
        }
        failure {
            echo 'Build or push to Docker Hub failed!'
        }
    }
}
