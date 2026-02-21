pipeline {
    agent any

    stages {
        stage('Intro Message') {
            steps {
                echo 'This is Docker Lab'
                sh 'date'
                sh 'echo "Running user: $(whoami)"'
            }
        }
    }
}
