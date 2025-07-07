pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/nhnaveen/install_maven.git'
        SCRIPT_PATH = 'install_maven.sh'
    }

    stages {
        stage (clone repository){
            steps {
                git url: "${GIT_REPO}", branch: 'main'
            }
        }

        stage (install_maven) {
            steps {
                sh "chmod +x ${env.SCRIPT_PATH}"
                sh "./${env.SCRIPT_PATH}"
            }
        }
    }
}
