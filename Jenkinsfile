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
               '''  
               sh "cd /home/ubuntu/mvn_project
               sh "mvn clean install"
               '''
            }
        }
    }
}
