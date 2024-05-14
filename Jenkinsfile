pipeline {
    agent any
    
    
    environment {
        DOCKER_HUB_CREDENTIALS = '10'
        DOCKER_IMAGE_NAME = 'fdehech/deploy'
        //DOCKER_IMAGE_TAG = 'latest'
        DOCKER_IMAGE_TAG = "${env.BUILD_NUMBER}"
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
                    docker.withRegistry('', DOCKER_HUB_CREDENTIALS) {
                    //docker.withRegistry(credentialsId: DOCKER_HUB_CREDENTIALS) {
                        docker.image("${DOCKER_IMAGE_NAME}:${env.BUILD_NUMBER}").push()
                    }
                }
            }
        }
        stage('trivy scan') {
            steps {
                /*script { 
                    def trivyImage = docker.image('aquasec/trivy:canary')
                    trivyImage.pull()
                    docker.image('aquasec/trivy:canary').run("--entrypoint=''") {
                        sh "trivy image ${DOCKER_IMAGE_NAME}:${env.BUILD_NUMBER} --severity HIGH,CRITICAL -o trivy_report.html --scanners vuln"
                        //sh "cat trivy_report.html"
                    }
                
                    trivyImage.inside("--entrypoint=''") {
                        sh "trivy image ${DOCKER_IMAGE_NAME}:${env.BUILD_NUMBER} --severity HIGH,CRITICAL -o trivy_report.html --scanners vuln"
                        //sh "cat trivy_report.html"
                    }
                } */
                sh "trivy image ${DOCKER_IMAGE_NAME}:${env.BUILD_NUMBER} --severity HIGH,CRITICAL --scanners vuln > /home/report.txt"
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
