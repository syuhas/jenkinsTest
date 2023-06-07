pipeline {
    agent any

    stages {
        stage('BuildImage') {
            steps {
                echo "build here"
            }
        }
        stage('PublishECR') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: "aws",
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
                    region: 'us-east-1'
                ]]) {
                    
                    sh 'docker push 551796573889.dkr.ecr.us-east-1.amazonaws.com/jrepo:latest'
                }
            }
        }
        stage('TestRepo') {
            steps {
                sh "aws ecr list-images --repository-name jrepo"
                
            }
        }
    
        stage('CleanupServer') {
            steps {
                echo "docker system prune -f -a"
                
            }
        }
    
    }   
}       