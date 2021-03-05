pipeline {
    agent any
    stages {
        stage("Build application") {
            steps {
                sh "dotnet build src/Workouter.sln"
                sh "docker build . -t dpankov91/workout"
                withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'DockerHubb', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']])
                {
                    sh 'docker login -u ${USERNAME} -p ${PASSWORD}'
                }
                sh "docker push dpankov91/workout"
            }
        }
        stage("Release to staging") {
            steps {
                sh "docker-compose pull"
                sh "docker-compose up -d"
            }
        }
    }
}
