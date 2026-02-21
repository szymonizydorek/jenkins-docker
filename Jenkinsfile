pipeline {
    agent any

    stages {
        stage('Hello World') {
            steps {
                echo '=== TRIGGER DZIAŁA! ==='
                echo 'Witaj w świecie automatyzacji!'
                sh 'date'
                sh 'echo "Uruchomione przez: $(whoami)"'
            }
        }
    }
}
