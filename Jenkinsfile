pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: "aws",
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
                    region: 'us-east-1'
                ]]) {
                    sh 'aws ec2 describe-instances --region us-east-1'
                }
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