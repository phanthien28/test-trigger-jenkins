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
    agent {
        docker {
            image 'nginx:alpine'
            args '-p 8000:80'
        }
    }
    
    stages {
        stage('Deploy') {
            steps {
                echo 'Triển khai trang HTML Hello World'
                sh 'mkdir -p /usr/share/nginx/html/'
                sh 'cp index.html /usr/share/nginx/html/'
                echo 'Trang web đã được triển khai tại http://localhost:8000'
            }
        }
    }
    
    post {
        success {
            echo 'Website đã được triển khai thành công!'
        }
    }
}