pipeline {
    agent any 	
	     environment {
		
                registry = "aksh2002/image-upload-logic" 
                registryCredential = 'dockerHub' 
                dockerImage = ''		
	     }

    stages {	   
	        stage('Scm Checkout') {            
		          steps {
                  checkout scm
		          }	
          }

	        stage('Build Docker Image') { 
		          steps {
		             sh 'whoami'
                   script {
		                dockerImage = docker.build registry + ":${env.BUILD_ID}"
                   }
              }
	        }
	        stage("Push Docker Image") {
                steps {
                   script {

                      docker.withRegistry( '', registryCredential ) {
                        dockerImage.push("${env.BUILD_ID}")
                      } 

                   }
                }
          }
	
    }
}