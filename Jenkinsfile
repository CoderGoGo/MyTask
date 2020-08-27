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
               sh 'cd /home/ubuntu/compose/jenkins_home/workspace/JavaApp && mvn clean install'
            }
        }
    }
}
