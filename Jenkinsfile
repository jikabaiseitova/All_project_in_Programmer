pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY = credentials('AWS_ACCESS_KEY')
        AWS_SECRET_KEY = credentials('AWS_SECRET_KEY')
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/your-username/your-private-repo.git', credentialsId: 'github-credentials-id'
            }
        }

        stage('Install Terraform') {
            steps {
                sh '''
                    if ! command -v terraform &> /dev/null; then
                        wget https://releases.hashicorp.com/terraform/1.0.10/terraform_1.0.10_linux_amd64.zip
                        unzip terraform_1.0.10_linux_amd64.zip
                        sudo mv terraform /usr/local/bin/
                    fi
                '''
            }
        }

        stage('Init Terraform') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Plan Terraform') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Apply Terraform') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}

