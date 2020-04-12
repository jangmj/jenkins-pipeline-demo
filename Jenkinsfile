pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Hello World"'
                sh '''
                    echo "Multiline shell steps works too"
                    ls -lah
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh "export NAME=`mvn help:evaluate -Dexpression=project.name | grep "^[^\[]"`"
                sh "echo ${NAME}"
                sh 'echo "scp Jenkinsfile"'
                sh '''
                    ls -lah
                    scp -P 22000 ./Jenkinsfile webdev@1.242.216.122:~/projects/lotte/
                '''
            }
        }
    }
}
