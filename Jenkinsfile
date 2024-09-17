pipeline {
    agent {
        kubernetes {
            label 'jenkins-agent'
            defaultContainer 'node'
            yaml """
apiVersion: v1
kind: Pod
spec:
  containers:
  - name: node
    image: localhost:32000/node-aws-cli:latest
    command:
    - cat
    tty: true
"""
        }
    }
    environment {
        AWS_DEFAULT_REGION = 'us-east-1'
    }
    stages {
        stage('AWS Version') {
            steps {
                container('node') {
                    sh 'aws --version'
                }
            }
        }
    }
}
