pipeline {
    agent {
        kubernetes {
            defaultContainer 'node'
            yaml '''
apiVersion: v1
kind: Pod
metadata:
  labels:
    test: yes
spec:
  containers:
  - name: node
    image: localhost:32000/node-aws-cli:latest
    command:
    - cat
    tty: true
  - name: jnlp
    image: jenkins/inbound-agent:latest
'''
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
