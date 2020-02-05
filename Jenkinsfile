pipeline {
    agent any

    stages {
        stage('Initialize') {
            steps {
                terraform init
            }
        }
        stage('Plan') {
            steps {
                terraform plan
            }
        }
        stage('Apply') {
            steps {
                terraform apply
            }
        }
    }
}