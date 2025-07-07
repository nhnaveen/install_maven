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
                script {
                    def mavenInstalled = sh(script: 'which mvn', returnStatus: true) == 0
                    if (mavenInstalled) {
                        echo "Maven is already installed. Skipping installation."
                    } else {
                        echo "Maven not found. Proceeding with installation."
                    }
                }
            }
        }
        
        stage ('install_maven') {
            steps {
                sh '''
                  chmod 777 maven.sh
                  ./maven.sh
                '''
            }
        }
    }
}
