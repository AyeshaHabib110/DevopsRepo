pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {I
                git branch: 'main', url: 'https://github.com/AyeshaHabib110/DevopsRepo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("myapp")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    dockerImage.run('-p 3000:3000')
                }
            }
        }
    }
}

