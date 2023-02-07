pipeline {
    agent { node { label 'jenkins-slave-rohan' } }

    stages {
        stage('build') {
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
                    git pull 
                    git switch jenkins/ruby-1
                    git pull 
                    git switch jenkins/ruby
                    git merge --strategy-option theirs --no-edit jenkins/ruby-1
                    git push origin jenkins/ruby
                '''
            }
        }
    }
}
