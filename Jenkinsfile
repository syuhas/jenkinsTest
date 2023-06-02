pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the docker image from dockerfile'
                sh 'cd /home/ec2-user/jenkinstest'
                sh 'docker build -t jt .'
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