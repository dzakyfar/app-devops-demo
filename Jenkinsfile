pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/dzakyfar/app-devops-demo.git'
            }
        }
        stage('Build') {
            steps { sh 'mvn clean package -DskipTests' }
        }
        stage('Docker Build') {
            steps { sh 'docker build -t dzakyfar/app-devops-demo .' }
        }
        stage('Docker Run') {
            steps { sh 'docker run -d -p 8081:8080 dzakyfar/app-devops-demo' }
        }
    }
}
