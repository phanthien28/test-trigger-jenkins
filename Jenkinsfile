pipeline {
    agent any

    stages {
        stage('clone stage') {
            steps {
                echo 'Hello World!'
            }
        }
        
        stage('Run Child Job') {
            steps {
                build job: 'run-job-child', parameters: [string(name: 'STATUS_MESSAGE', value: 'run success')]
            }
        }

        stage('Run Child Job1') {
            steps {
                build job: 'run-job-child1', parameters: [string(name: 'STATUS_MESSAGE1', value: 'run still success')]
            }
        }
    }
}