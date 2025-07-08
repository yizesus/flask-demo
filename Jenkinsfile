pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/your-user/your-repo.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("my-flask-app")
                }
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 5000:5000 my-flask-app'
            }
        }
    }
}
