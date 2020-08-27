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
               withMaven(
                     maven: 'maven-3',
                     mavenSettingsConfig: 'my-maven-settings') 
                     {
                           sh "mvn clean verify"
            }
        }
    }
}

