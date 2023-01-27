pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'javac DuplicateCharacters.java'
            }
        }
        stage('Run') {
            steps {
                bat 'java DuplicateCharacters'
            }
        }
    }
}
