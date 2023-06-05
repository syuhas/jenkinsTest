pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Build the docker image here"
                sh "docker build -t jt ."
            }
        }
        stage('PublishECR') {
            steps {
                echo "Publish Stage here made a change to test"
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying to ecr here"   
                
            }
        }
    
    }   
}       