pipeline{
    agent any
    tools{
        maven 'localMaven'
    }
    stages{
        stage('build'){
            steps{
                /* With the first one we create the war file*/
                bat 'mvn clean package'
                /* With the second command we are going to call
                Docker, which in turn invoke the dockerfile
                and from there following instructions will create
                a tagged docker image of our application.
                */
                bat 'docker build . -t tomcatwebapp:${env.BUILD_ID}'
            }

        }



    }












}