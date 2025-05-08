pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', 'https://github.com/phanthien28/test-trigger-jenkins.git'
            }
        }
    }

    post {
        always{
            mail bcc: '', body: ' xin chao cac ban', cc: 'thien.210213@tbd.edu.vn', from: '', replyTo: '', subject: 'Hello', to: 'phanthothien204@gmail.com'
        }
    }
}