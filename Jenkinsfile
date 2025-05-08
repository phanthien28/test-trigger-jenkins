// Jenkinsfile
pipeline {
    agent {
        // This tells Jenkins to run the pipeline steps inside a Docker container.
        // The 'python:3.9-slim' image will be pulled from Docker Hub if not present locally.
        // This image comes with Python 3.9 pre-installed, fulfilling the request
        // to "install python" using the Docker Pipeline plugin.
        docker {
            image 'python:3.9-slim' // You can choose other Python versions like 'python:3.11-slim'
            // alwaysPull true // Uncomment to always pull the latest image version
        }
    }

    stages {
        // Stage 1: Checkout source code
        // It's a good practice to have an explicit stage for checking out your code.
        stage('Checkout SCM') {
            steps {
                // This step checks out the source code from your configured SCM (e.g., Git)
                // into the Jenkins workspace inside the Docker container.
                checkout scm
            }
        }

        // Stage 2: Run the Python script
        stage('Run Python Script') {
            steps {
                // This command executes your Python script.
                // 'python' invokes the Python interpreter available in the Docker container.
                // 'hello.py' refers to the script 'e:\Automation Frame\test-trigger-jenkins\hello.py'
                // which is assumed to be at the root of your Jenkins workspace
                // after the 'checkout scm' step.
                sh 'python hello.py'
            }
        }

        // You can add more stages here, for example, for tests or other actions:
        // stage('Run Tests') {
        //     steps {
        //         sh 'python -m unittest discover'
        //     }
        // }
    }

    // Optional: Post-build actions
    // post {
    //     always {
    //         echo 'Pipeline finished.'
    //         // Example: cleanWs() // Cleans up the workspace
    //     }
    //     success {
    //         echo 'Python script executed successfully!'
    //     }
    //     failure {
    //         echo 'Pipeline failed.'
    //         // Example: mail to: 'dev-team@example.com', subject: 'Pipeline FAILED'
    //     }
    // }
}