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
            image 'python:3.8-slim'  // Sử dụng image Python 3.8 nhẹ
            args '-v $PWD:/app'      // Mount thư mục hiện tại vào /app trong container
        }
    }
    stages {
        stage('Run Python Script') {
            steps {
                sh 'python hello.py'  // Chạy file hello.py
            }
        }
    }
}