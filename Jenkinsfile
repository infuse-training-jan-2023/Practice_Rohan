pipeline {

    stages {
        stage('build') {
            steps {
                bat 'echo Hello world'
            }
        }
        stage('Test') {
            steps {
                bat 'ruby test.rb'
            }
        }
        stage('Merge') {
            steps {
                bat '''
                    git switch jenkins/ruby
                    git pull
                    git switch jenkins/ruby-1
                    git pull
                    git switch jenkins/ruby
                    git merge --strategy-option theirs --no-edit jenkins/ruby-1
                    git push -u origin jenkins/ruby
                '''
            }
        }
    }
}
