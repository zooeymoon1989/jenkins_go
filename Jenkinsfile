pipeline {
    agent {
        docker {
            image 'golang:1.15.6-alpine3.12'
            args '-p 80:80'
        }
    }
    stages {
        stage('Build'){
            steps{
                echo 'building project...'
                sh   'export PATH=$PATH:/usr/local/go/bin'
                sh   'go env -w GO111MODULE=on'
                sh   'go env -w GOPROXY=https://goproxy.io,direct'
                sh   'go run main.go'
            }
        }
    }
}
