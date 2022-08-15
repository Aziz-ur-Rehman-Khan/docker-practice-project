pipeline {
    agent any
    
    stages {
        stage("Build") {
          agent any
          steps { 
               echo " Building Image ...."
               sh 'docker build -t azizurehmankhan/sqlite-test-app:latest .'
          }
        }
      
     stage("Dockerhub Login") {
         agent any
         steps { 
              echo " Dockerhub Login ....."
             sh "docker login -u azizurehmankhan -p aziz5050r"
         }
       }
      
     stage("Publishing Image to Dockerhub") {
         agent any
         steps { 
              echo "Publishing Image to Dockerhub...."
              sh "docker push azizurehmankhan/sqlite-test-app:latest"
         }
       }
    }
   
}
