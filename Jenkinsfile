pipeline {
    agent any

    stages {
        stage('Fetch Repository') {
            steps {
                git 'https://github.com/your-github-username/your-repo-name.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    def image = docker.build('your-dockerhub-username/your-image-name:latest')
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials-id') {
                        image.push()
                    }
                }
            }
        }
    }
    post {
        success {
            // Trigger another job upon successful completion
            build job: 'Second-Job-Name', wait: false
        }
    }
}
