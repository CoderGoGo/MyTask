pipeline {
    agent any
    environment {
        PATH = "/usr/bin/:$PATH"
    }
    stages {
        stage("clone code"){
            steps{
               git 'https://github.com/CoderGoGo/MyTask'
            }
        }
        stage("build code"){
            steps{ 
                sh "mvn clean install"
            }
        }
    }
}
