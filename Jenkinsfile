pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the docker image from dockerfile'
                sh 'docker build -t jt .'
                sh 'docker run -d -p 80:80 jt'               //run the docker image here
            }
        }
        stage('Test') {
            steps {
                sh 'curl ec2-18-207-154-232.compute-1.amazonaws.com'  //test the docker here with a curl to the server then stop the container
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying with docker run command...'     //turn this into a aws connection setup for ecr push
                
            }
        }
    }   //add a step to push to ecr
}       //add a step to run a task on ecs