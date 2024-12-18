pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/AmelTaouali/static-api.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t amel223/static-api:latest .'
                }
            }
        }
        stage('Push to Docker Hub') {
            steps {
                script {
                    sh 'docker login -u "amel223" -p "Yahyabouhlel123*"'
                    sh 'docker push amel223/static-api:latest'
                }
            }
        }
        stage('Deploy Container') {
            steps {
                script {
                    sh 'docker run -d -p 4000:4000 amel223/static-api:latest'
                }
            }
        }
    }
}
