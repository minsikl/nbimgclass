pipeline {
  agent any

  options {
    timeout(time: 5, unit: 'MINUTES')
  }

  environment {
    MY_PIPELINE_VAR = "Demo Env Var from Pipeline"
  }

  stages {
    stage('Build') {
      steps {
        echo "Sample Build stage with variable from pipeline strategy >> ${MY_STRATEGY_VAR}"
      }
    }

    stage('Test') {
      steps {
        echo "Sample Test stage with variable from Jenkinsfile >> ${MY_PIPELINE_VAR}"
      }
    }

    stage('Promote') {
      steps {
        echo "Sample Promote stage with OpenShift Client Plugin DSL"
        script {
          openshift.withCluster() {
            openshift.withProject() {
              echo "Using project: ${openshift.project()}"
            }
          }
        }
      }
    }

  }
}
