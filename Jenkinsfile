 
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
                    withMaven(jdk: 'java-8', maven: 'mvn_3.6.0'){
                        sh 'mvn clean package sonar:sonar'
                    }
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
        stage("Deploy"){
            steps{ 
              sshagent(['deploy_user']){
                  sh "scp -o StrictHostKeyChecking=no webapp/target/webapp.war ubuntu@18.157.79.205:/opt/apache-tomcat-8.5.58/webapps"
               }
            }
        }
    }
}
