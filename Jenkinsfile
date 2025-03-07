pipeline {
    agent {
        dockerContainer {
            image 'node:22.14.0-alpine3.21'
        }
    }

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_KEY')
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/vikramdevops0448/test-opensupport-terraform-project.git'
            }
        }

        stage('Init Terraform') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Validate Terraform') {
            steps {
                script {
                    sh 'terraform validate'
                }
            }
        }

        stage('Plan Terraform') {
            steps {
                script {
                    sh 'terraform plan -var-file=terraform.tfvars'
                }
            }
        }

        stage('Apply Terraform') {
            steps {
                script {
                    sh 'terraform apply -var-file=terraform.tfvars -auto-approve'
                }
            }
        }

        stage('Destroy Terraform') {
            steps {
                script {
                    input message: 'Do you want to destroy the infrastructure?', ok: 'Yes, destroy'
                    sh 'terraform destroy -var-file=terraform.tfvars -auto-approve'
                }
            }
        }
    }

    post {
        success {
            echo 'Infrastructure provisioned and managed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the logs!'
        }
    }
}



