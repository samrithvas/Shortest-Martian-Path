pipeline {
    agent any
options {
        runAsUser('SYSTEM')
    }
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
        IMAGE_NAME = "samrithvas1010/shortest-martian-path"
        BRANCH_NAME = "main"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: BRANCH_NAME, url: 'https://github.com/samrithvas/Shortest-Martian-Path'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t $IMAGE_NAME:latest ."
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Add real tests here later!"'
            }
        }

        stage('Login to Docker Hub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }

        stage('Push Image to Docker Hub') {
            steps {
                sh "docker push $IMAGE_NAME:latest"
            }
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}
