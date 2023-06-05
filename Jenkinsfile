pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Build the docker image here"
            }
        }
        stage('PublishECR') {
            steps {
                echo "Publish Stage"
        }
        stage('Deploy') {
            steps {
                echo "Deploying to ecr here"     //turn this into a aws connection setup for ecr push
                
            }
        }
    }   //add a step to push to ecr
}       //add a step to run a task on ecs