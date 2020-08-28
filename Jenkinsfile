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
              withMaven(jdk: 'java-8', maven: 'mvn_3.6.0') {
                    sh "mvn clean install" 
               }
            }
        }
    }
}
