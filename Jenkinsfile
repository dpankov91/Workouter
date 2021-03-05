pipeline {
    agent any
    stages {
 stage('Initialize'){
	steps{
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }}
        stage("Build application") {
            steps {
                sh "dotnet build src/Workouter.sln"
                sh "docker build . -t dpankv91/workouter"
                withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'DockerHubb', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']])
                {
                    sh 'docker login -u ${USERNAME} -p ${PASSWORD}'
                }
                sh "docker push dpankv91/workouter"
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
