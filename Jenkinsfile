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
                    git switch origin/jenkins/ruby
                    git merge origin/jenkins/ruby-1
                    git push -u origin origin/jenkins/ruby
                '''
            }
        }
    }
}
