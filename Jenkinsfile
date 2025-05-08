pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout code từ repository
                checkout scm
            }
        }
        
        stage('Validate HTML') {
            steps {
                // Kiểm tra xem file index.html có tồn tại
                sh 'ls -la'
                sh 'test -f index.html || (echo "index.html not found" && exit 1)'
            }
        }
        
        stage('Deploy to Web Server') {
            steps {
                // Triển khai file index.html đến web server
                // Đây là ví dụ sử dụng thư mục web server local
                sh 'mkdir -p /var/www/html/ || true'
                sh 'cp index.html /var/www/html/'
                
                // Hoặc bạn có thể sử dụng các plugin như SSH, FTP để triển khai lên server khác
                // sshPublisher(publishers: [
                //     sshPublisherDesc(
                //         configName: 'myWebServer',
                //         transfers: [sshTransfer(sourceFiles: 'index.html', remoteDirectory: '/var/www/html/')],
                //         verbose: true
                //     )
                // ])
            }
        }
        
        stage('Verify Deployment') {
            steps {
                // Kiểm tra xem file đã được triển khai
                sh 'test -f /var/www/html/index.html || (echo "Deployment failed" && exit 1)'
                echo 'Deployment successful!'
            }
        }
    }
    
    post {
        always{
            mail bcc: '', body: ' xin chao cac ban', cc: 'thien.210213@tbd.edu.vn', from: '', replyTo: '', subject: 'Hello', to: 'phanthothien204@gmail.com'
        }
    }
}