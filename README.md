requisites

* Terraform CLI installed 
* AWS credentials configured.
* kubectl installed.

# Deployment Instructions
* Edit terraform.tfvars to match your values.
* Run a <terraform init> to grab providers and modules.
* Run a <terraform plan> -destory to view the plan.
* Run a <terraform_apply> -auto-approve  and wait ~15 minutes. 
* Run <aws eks --region us-east-1 update-kubeconfig --name dev-cluster> to add the cluster context to your kubeconfig.
* Run <kubectl get pods -n dev> to ensure wordpresss deployed as expected.
* Run <kubectl get svc> to grab the AWS created DNS address for the wordpresss service.
* Go to your browser and navigate to http://<dns-address>:8080 or 80
* Log in with the credentials you set in  terraform.tfvars.
* Distory terraform destroy  --force

# Connecting Run below to add the context to your kubeconfig file.
  aws eks --region us-east-1 update-kubeconfig --name dev-cluster

# Requirements
* terraform ~> 1.2.6 
* aws ~> 4.21.0
* helm ~> 2.6.0
* kubernetes ~> 2.12.3
* terraform-aws-modules/eks/aws ~> 18.28.0

SSL
https://docs.bitnami.com/aws/how-to/get-started-wordpress-aws-marketplace-intermediate/
sudo /opt/bitnami/bncert-tool
     /opt/bitnami/letsencrypt/certificates
