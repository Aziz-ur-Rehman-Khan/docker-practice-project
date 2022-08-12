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
              echo " Dockerhub Login ...."
             sh "docker login -u ${secrets.DOCKER_USERNAME} -p ${secrets.DOCKER_PASSWORD}"
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
