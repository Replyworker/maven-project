pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script{
                    sh 'mvn clean package'
                }
            }    
            post {
                success {
                    echo 'Now archiving...'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
         
    }
}