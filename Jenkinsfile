pipeline {
    agent any

    stages {
        stage ('clone repository'){
            steps {
                git url: "https://github.com/nhnaveen/install_maven.git", branch: 'main'
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
