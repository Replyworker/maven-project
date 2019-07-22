pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                set M2_HOME=C:\Users\m.casini\apache-maven-3.6.0-bin\apache-maven-3.6.0
                set path=C:\Users\m.casini\apache-maven-3.6.0-bin\apache-maven-3.6.0\bin:%path%;
                bat " mvn clean package"
            }
        }
    }
}