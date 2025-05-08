

pipeline {
    agent {
        docker {
            image 'python:3.9' // Sử dụng image Docker có sẵn Python
            args '-v /var/run/docker.sock:/var/run/docker.sock' // Kết nối Docker socket nếu cần
        }
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout code từ repository
                checkout scm
            }
        }
        
        stage('Setup Environment') {
            steps {
                // Kiểm tra phiên bản Python
                sh 'python --version'
                
                // Cài đặt các dependencies nếu cần
                // Uncomment dòng dưới nếu bạn có file requirements.txt
                // sh 'pip install -r requirements.txt'
            }
        }
        
        stage('Run Python Script') {
            steps {
                // Chạy file Python
                sh 'python hello.py'
            }
        }
    }
    
    post {
        success {
            echo 'Python script executed successfully!'
        }
        failure {
            echo 'Failed to execute Python script'
        }
        always {
            echo 'Pipeline completed'
        }
    }
}