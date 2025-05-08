// pipeline {
//     agent any

//     stages {
//         stage('clone stage') {
//             steps {
//                 echo 'Hello World!'
//             }
//         }
//     }
// }

pipeline {
    agent any
    
    stages {
        stage('Deploy') {
            steps {
                echo 'Triển khai trang HTML Hello World'
                sh 'mkdir -p ./html'
                sh 'cp index.html ./html/'
                echo 'Trang web đã được triển khai'
            }
        }
        
        stage('Serve') {
            steps {
                echo 'Phục vụ trang web với Nginx'
                sh '''
                    # Dừng container cũ nếu có
                    docker rm -f nginx-hello || true
                    
                    # Chạy container Nginx mới
                    docker run -d --name nginx-hello -p 8000:80 -v "$(pwd)/html:/usr/share/nginx/html" nginx:alpine
                '''
                echo 'Trang web có thể truy cập tại http://localhost:8000'
            }
        }
    }
    
    post {
        success {
            echo 'Website đã được triển khai thành công!'
        }
    }
}