pipeline {
    agent any
    environment {
        PATH = "/usr/share/maven:$PATH"
    }
    stages {
        stage("clone code"){
            steps{
               git 'https://github.com/CoderGoGo/MyTask'
            }
        }
        stage("build code"){
            steps{
               def mvnHome = tool name: 'Apache Maven 3.6.0', type: 'maven'
               sh "mvn clean install"
            }
        
        }
    }
}
