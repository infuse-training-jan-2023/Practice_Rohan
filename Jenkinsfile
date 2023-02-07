pipeline {
    agent { node { label 'jenkins-slave-rohan' } }

    stages {
        stage('build') {
            steps {
                bat 'echo hello World'
            }
        }
        stage('test') {
            steps {
                bat 'ruby test.rb'
            }
        }
    }
}
