pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', 'https://github.com/phanthien28/test-trigger-jenkins.git'
            }
        }
    }
}