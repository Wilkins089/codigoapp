pipeline {
    agent any
    options {
        timeout(time: 2, unit: 'MINUTES' )
    }

    stages {
        stage('Composer Update') {
            steps {
                sshagent(['stagememod']) {
                    sh 'ssh -tt memodstage docker exec -w /app -it ecs-wise-api-38-php-aad182b1ebffc08ce901 composer update'
                }                
            }
        }
        
        stage('Phinx Migrate') {
            steps {
                sshagent(['stagememod']) {
                    sh 'ssh -tt memodstage docker exec -w /app -it ecs-wise-api-38-php-aad182b1ebffc08ce901 ./vendor/bin/phinx migrate'
                }
            }
        }
        stage('Clear Cache') {
            steps {
                sshagent(['stagememod']) {
                    sh 'ssh -tt memodstage docker exec -w /app/ -it ecs-wise-api-38-php-aad182b1ebffc08ce901 php cli/cli.php clearcache'
                }
            }
        }
    }
}
