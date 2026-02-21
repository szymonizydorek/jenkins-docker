pipeline {
    agent any

    environment {
        IMAGE_NAME = "flask-lab-training"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Intro Message') {
            steps {
                echo 'This is Docker Lab'
                sh 'date'
                sh 'echo "Running user: $(whoami)"'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Running docker build command...'
                dir('flask-hello-lab') {
                    sh "docker build -t ${IMAGE_NAME}:latest ."
                }
            }
        } 

        stage('Security Scan (Trivy)') {
            steps {
                echo "Scanning image ${IMAGE_NAME} with Trivy..."

                sh "trivy image --severity HIGH,CRITICAL ${IMAGE_NAME}:latest"
            }
        }
    }
}
