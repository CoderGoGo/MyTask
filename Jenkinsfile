pipeline {
    agent any
    stages {
        stage("Clone code"){
            steps{
               git 'https://github.com/CoderGoGo/MyTask'
            }
        }
        stage("Test Sonar"){
            steps{
                withSonarQubeEnv('SonarQube'){
                    sh 'mvn clean package sonar:sonar'
            }
          }     
        }
        stage("Build and test code"){
            steps{ 
              withMaven(jdk: 'java-8', maven: 'mvn_3.6.0') {
                    sh "mvn clean install" 
               }
            }
        }
    }
}
