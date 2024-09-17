pipeline {
    agent {
        docker {
            image 'localhost:32000/node-aws-cli:latest'
            args '-u root'  // Run as root user
        }
    }
    environment {
        AWS_DEFAULT_REGION = 'us-east-1'  // e.g., 'us-east-1'
    }
    stages {
        stage('AWS Version') {
            steps {
                sh 'aws --version'
            }
        }
    }
}
