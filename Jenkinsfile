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
                  sleep 6
                  checkout scm
		          }	
	        }
	        stage("Push Docker Image") {
                steps {
                  sleep 17
                  checkout scm
		          }	
          }
	
    }
}