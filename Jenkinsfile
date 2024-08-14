pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from the Git repository
                git 'https://github.com/cloud-rohit-1997/terraform-demo.git'
            }
        }
        stage('Terraform Cleanup') {
            steps {
                // Clean up any existing Terraform state or configuration
                sh 'rm -rf .terraform'
            }
        }
        stage('Terraform Init') {
            steps {
                // Initialize Terraform with the new configuration
                sh 'terraform init -reconfigure'
            }
        }
        stage('Terraform Plan') {
            steps {
                // Run terraform plan to see the changes
                sh 'terraform plan'
            }
        }
        stage('Approval') {
            steps {
                script {
                    // Wait for manual approval before proceeding
                    input message: 'Approve to proceed with the Terraform apply?', ok: 'Proceed'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                // Apply Terraform configuration if approved
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
