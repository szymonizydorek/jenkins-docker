pipeline {
    agent any

    environment {
        IMAGE_NAME = "flask-lab-training"
        REPORT_NAME = "trivy-securit-report.txt"
    }

    stages {    // <--- TEGO BRAKOWAŁO (Otwarcie kontenera na etapy)

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
                sh "trivy image --severity HIGH,CRITICAL ${IMAGE_NAME}:latest > ${REPORT_NAME}"
            }
        }

    }  // <-CLOSING STAGES
    
    post { // <-OPENINING POST

    always {

    }

    failure {
        echo "Image is not secure. See ${REPORT_NAME}" 
    }

    }
}
