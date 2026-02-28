pipeline {
    agent any

    environment {
        IMAGE_NAME = "flask-lab-training"
        REPORT_NAME = "trivy-report-$(date +'%Y-%m-%d_%H-%M).txt"
        PRIVATE_REGISTRY= "172.31.29.60:5000"
    }

     stages {    // <-- OPEN STAGES
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
                sh """
                trivy image \
                --severity HIGH,CRITICAL \
                --exit-code 1 \
                --no-progress \
                --format table \
                --output ${REPORT_NAME} \
                ${IMAGE_NAME}:latest \
                """
            }
        }

        stage('Push to Private Registry') {
            when {
                expression { currentBuild.currentResult == 'SUCCESS'}
            }
            steps {
              sh """
                echo "Pushing image ${IMAGE_NAME} to ${PRIVATE_REGISTRY}..."
                docker tag ${IMAGE_NAME}:latest ${PRIVATE_REGISTRY}/${IMAGE_NAME}:latest
                docker push ${PRIVATE_REGISTRY}/${IMAGE_NAME}:latest
                """
            }
        }

    }  // <-CLOSING STAGES
    
    post { // <-OPENINING POST
        always {
            archiveArtifacts artifacts: "${REPORT_NAME}", fingerprint: true
             }


    failure {
      echo "Image is not secure. See ${REPORT_NAME}" 
    }

    } // <-CLOSING POST
}
