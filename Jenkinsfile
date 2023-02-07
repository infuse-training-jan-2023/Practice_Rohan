pipeline {
    agent { node { label 'jenkins-slave-rohan' } }

    stages {
        stage('build') {
            steps {
                bat 'echo hello jenkins'
            }
        }
        stage('test') {
            steps {
                bat 'ruby test.rb'
            }
        }
    }
}
