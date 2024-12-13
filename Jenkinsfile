pipeline{
  agent any
  tools {
        maven 'maven-3.9.9' 
  }
  parameters{
        choice(name: 'action', choices: ['build', 'destroy'], description: 'Build Or Destroy Infrastructure')
        //string(name: 'ec2_ami_id', defaultValue: '', description: 'ami id ')
  }
  stages{
    stage("Clone and Update Tfvars"){
      steps{
        script{
            git branch: 'main', credentialsId: 'admin', url: 'https://github.com/Faoziyah/RStudio-Connect.git'
            sh "echo ${params.action}"
           // sh"""
              ///echo "before update"
             // cat terraform.tfvars
             
              //sed -i 's/AMI/${params.ec2_ami_id}/g' $WORKSPACE/terraform.tfvars

             // cat terraform.tfvars
            //"""
        }
      }
    }

stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv(sonar) {
                    script {
                        sh """
                        sonar-scanner \
                        -Dsonar.projectKey=jenkins-sonar \
                        -Dsonar.sources=. \
                        -Dsonar.host.url=http://54.193.42.219:9000 \
                        -Dsonar.terraform.reportPaths=sonar-report.json
                        """
                    }
                }
            }
        }

    
        stage('SonarQube analysis') {
            tools {
                jdk 'jdk11'
            }
            steps {
                 withSonarQubeEnv('sonar') {
                     sh 'mvn sonar:sonar'
                 }
               // echo "sonar passed"
            }
        }
        stage("Quality Gate") {
            steps {
                 timeout(time: 1, unit: 'HOURS') {
                     waitForQualityGate abortPipeline: true
                 }
               // echo "sonar passed"
            }
        }

    stage("Terraform Apply"){
      when { equals expected: 'build', actual: params.action }
      steps{
        script{
          sh"""
          echo "Aplying the Infra"
          terraform init -no-color 
         
          terraform validate -no-color 
          terraform plan  -var-file $WORKSPACE/terraform.tfvars -no-color
          terraform apply  -var-file $WORKSPACE/terraform.tfvars -no-color -auto-approve
          """
        }
      }
    }
    stage("Terraform Destroy"){
      when { equals expected: 'destroy', actual: params.action }
      steps{
        script{
          sh"""
            echo "Destroying the Infra"
            terraform init -no-color 
            
            terraform validate -no-color 
            terraform plan  -var-file $WORKSPACE/terraform.tfvars -no-color
            terraform destroy  -var-file $WORKSPACE/terraform.tfvars -no-color -auto-approve
          """
        }
      }
    }
  }
}
