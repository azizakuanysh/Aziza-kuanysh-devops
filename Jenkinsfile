pipeline {
    agent any

    environment {
        STUDENT_NAME    = 'Aziza'
        STUDENT_SURNAME = 'Kuanysh'
        STUDENT_GROUP   = 'IT2-2310'
        STUDENT_ID      = '38287'
        PATH = "/opt/homebrew/bin:/usr/local/bin:/Applications/Docker.app/Contents/Resources/bin:${env.PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'git log -1 --oneline'
            }
        }
        stage('Build') {
            steps {
                sh '''
                    echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                    echo "Group: ${STUDENT_GROUP}"
                    echo "Student ID: ${STUDENT_ID}"
                    chmod +x scripts/Asan_Abai_system.sh app/student_app.sh
                    ./scripts/Aziza_Kuanysh_system.sh
                '''
            }
        }
        stage('Test') {
            steps {
                sh '''
                    bash -n scripts/Aziza_Kuanysh_system.sh
                    sh -n app/student_app.sh
                    test -f Dockerfile
                    test -f docker-compose.yml
                    test -f Aziza_Kuanysh.info.txt
                    echo "All checks passed"
                '''
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t asan-abai-devops .'
                sh 'docker images asan-abai-devops'
            }
        }
        stage('Docker Run') {
            steps {
                sh '''
                    docker rm -f aziza-kuanysh-container || true
                    docker run -d --name aziza-kuanysh-container -e STUDENT_NAME=${STUDENT_NAME} -e STUDENT_SURNAME=${STUDENT_SURNAME} -e STUDENT_GROUP=${STUDENT_GROUP} -e STUDENT_ID=${STUDENT_ID} asan-abai-devops
                    sleep 3
                    docker logs asan-abai-container
                    docker ps
                '''
            }
        }
    }
}
