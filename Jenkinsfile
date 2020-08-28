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
               sh "#!/bin/bash \n"+
                '''
                pwd
                cd /home/ubuntu/compose/jenkins_home/workspace/JavaApp
                pwd
                mvn clean install
                pwd
                '''
            }
        }
    }
}
