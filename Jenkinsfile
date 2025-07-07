pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git url: "https://github.com/nhnaveen/install_maven.git", branch: 'main'
            }
        }

        stage('Check and Install Maven') {
            steps {
                script {
                    def mavenInstalled = sh(script: 'which mvn', returnStatus: true) == 0
                    if (mavenInstalled) {
                        echo "Maven is already installed. Skipping installation."
                    } else {
                        echo "Maven not found. Proceeding with installation..."
                        sh '''
                            chmod +x maven.sh
                            ./maven.sh
                        '''
                    }
                }
            }
        }
    }
}
