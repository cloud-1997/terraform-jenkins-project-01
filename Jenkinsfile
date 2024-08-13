pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/cloud-rohit-1997/terraform-demo.git']])  
            }
        }

        stage ("terraform init") {
            steps {
                sh ('terraform init -reconfigure') 
            }
        }

          stage ("terraform plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}
