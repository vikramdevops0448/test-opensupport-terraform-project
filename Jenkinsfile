pipeline {
    agent any

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
    }
}

    /*post {
        always {
            echo 'Cleaning up infrastructure...'
            script {
                sh 'terraform destroy -auto-approve'
            }
        }
        
        success {
            echo 'Build succeeded! Infrastructure created and destroyed.'
        }
        
        failure {
            echo 'Build failed! Destroying resources to prevent unnecessary costs.'
        }
    }
}
