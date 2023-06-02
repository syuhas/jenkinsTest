pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the docker image from dockerfile'
                sh 'sudo docker build -t /home/ec2-user/jenkinsTest/jt .'
            }
        }
        stage('Test') {
            steps {
                sh 'sudo docker ps'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying with docker run command...'
                sh 'sudo docker run -d -p 80:80 jt'
            }
        }
    }
}