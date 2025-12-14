pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Install dependencies') {
      steps {
        sh '''
          python --version
          python -m pip install --upgrade pip
          pip install -r requirements.txt
          pip install pytest ruff
        '''
      }
    }

    stage('Lint') {
      steps {
        sh 'ruff check .'
      }
    }

    stage('Tests') {
      steps {
        sh 'pytest -q'
      }
    }
  }
}
