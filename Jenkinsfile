pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the docker image from dockerfile'
                sh 'docker build -t "/home/ec2-user/jenkinstest/jt" .'
            }
        }
        stage('Test') {
            steps {
                sh 'docker ps'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying with docker run command...'
                sh 'docker run -d -p 80:80 jt'
            }
        }
    }
}