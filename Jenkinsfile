pipeline {
    agent { node { label 'jenkins-slave-rohan' } }

    stages {
        stage('Build') {
            steps {
                bat 'echo Hello Jenkins!'
            }
        }
        stage('test') {
            steps {
                bat 'ruby test.rb'
            }
        }
        stage('merge') {
            steps {
                bat '''
                    git switch jenkins/ruby
                    git pull origin jenkins/ruby
                    git switch jenkins/ruby-1
                    git pull jenkins/ruby-1
                    git switch jenkins/ruby
                    git merge jenkins/ruby-1
                    git push origin jenkins/ruby
                '''
            }
        }
    }
}
