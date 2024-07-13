pipeline {
    agent any

    stages {
        stage('Fetch Repository') {
            steps {
                // Checkout the repository from GitHub
                git 'https://github.com/your-github-username/your-repo-name.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    def image = docker.build('your-dockerhub-username/your-image-name:latest')
                    // Login to Docker Hub
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials-id') {
                        // Push the Docker image to Docker Hub
                        image.push()
                    }
                }
            }
        }
    }
}
