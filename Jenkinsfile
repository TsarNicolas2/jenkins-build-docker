node{
  def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("nico/nginx")
    }

    stage('Test image') {
        docker.image('nico/nginx').withRun('-p 8083:80') { c ->
        sh 'docker ps'
        sh 'curl localhost'
	     }
    }
}