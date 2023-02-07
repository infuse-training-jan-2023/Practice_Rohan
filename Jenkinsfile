pipeline {
    agent { node { label 'jenkins-slave-rohan' } }

    stages {
        stage('build') {
            steps {
                bat 'ruby hash.rb'
            }
        }
        stage('test') {
            steps {
                bat 'ruby test.rb'
            }
        }
    }
}
