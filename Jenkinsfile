pipeline {
    agent any
    
    tools {
        // Định nghĩa Docker tool nếu được cấu hình trong Jenkins
        'org.jenkinsci.plugins.docker.commons.tools.DockerTool' 'docker'
    }

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'python:3.9-slim'
                    reuseNode true  // Sử dụng lại node hiện tại
                }
            }
            steps {
                sh 'python --version'
                sh 'python hello.py'
            }
        }
    }
}