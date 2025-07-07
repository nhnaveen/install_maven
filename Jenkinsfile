pipeline {
    agent any

    stages {
        stage ('clone repository'){
            steps {
                git url: "https://github.com/nhnaveen/install_maven.git", branch: 'main'
            }
        }

        stage ('Check and install Maven') {
            steps {
                def mavenInstalled = sh(script: 'which mvn', returnStatus: true) == 0
                if (mavenInstalled) {
                    echo "Maven is already installed. Skipping installation."
                } 
                else {
                    echo "Maven not found. Proceeding with installation..."
                    sh '''
                      chmod +x maven.sh
                      ./maven.sh
                    '''
                }
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage ('test') {
            steps {
                sh 'mvn test'
            }
        }
    }
}
