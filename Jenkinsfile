pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        // Checkout your source code
        checkout scm
     }
  }
  stage('Build Docker Image') {
      steps {
        container('docker') {
          script {
            // Build the Docker image
            def appImage = docker.build("fdehech/deploy:${env.BUILD_NUMBER}", "-f ./Dockerfile .")
            // Push the Docker image to your Docker registry
            docker.withRegistry('', '10') {
              appImage.push()
            }
          }
        }
      }
    }
  }
}
