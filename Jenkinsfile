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
    }
}