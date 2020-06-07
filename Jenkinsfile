pipeline {
    environment {
        USER_CREDENTIALS = credentials('dockerhub')
    }
    agent any
    stages {
        stage('Lint HTML') {
            steps {
                sh 'tidy -q -e *.html'
            }
        }
        stage('Building Docker Image') {
            steps {
                sh './run_docker.sh'
            }
        }
        // stage('Pushing to Docker Hub') {
        //     steps {
        //         sh './upload_docker.sh $USER_CREDENTIALS_USR $USER_CREDENTIALS_PSW'
        //     }
        // }
        // stage('Deploy') {
        //     steps {
        //         sh './create_infra.sh'
        //     }
        // }
    }
}