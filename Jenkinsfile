pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/yizesus/flask-demo.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("flask-demo")
                }
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 5000:5000 flask-demo'
				sh 'docker logs $(docker ps -a -q --latest)'
            }
        }
    }
}
