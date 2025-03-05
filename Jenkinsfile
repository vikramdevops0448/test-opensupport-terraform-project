pipeline {
    agent any

    environment {
        TF_CLI_ARGS_apply = "-auto-approve"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/vikramdevops0448/test-opensupport-terraform-project.git’
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
                    sh 'terraform plan'
                }
            }
        }

        stage('Apply Terraform') {
            steps {
                script {
                    sh 'terraform apply'
                }
            }
        }
    }

    post {
        success {
            echo 'Infrastructure provisioned successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the logs!'
        }
    }
}
}
