#User values of varaiable used in the project

# Networking
aws_region = "us-east-1"
vpc_cidr_block = "10.0.0.0/16"
dev1_subnet_az = "us-east-1a"
dev1_subnet_cidr_block = "10.0.1.0/24"
dev2_subnet_az = "us-east-1b"
dev2_subnet_cidr_block = "10.0.2.0/24"

# EKS Cluster 
cluster_name = "dev-cluster"
cluster_version = "1.27"
worker_group_name = "dev-worker-group-1"
worker_group_instance_type = [ "t3.medium" ] #2vcpu,4gb
autoscaling_group_min_size = 1
autoscaling_group_max_size = 2
autoscaling_group_desired_capacity = 1

# wordpress
wordpress_admin_user = "admin"
wordpress_admin_password = "admin"
APACHE_HTTP_PORT_NUMBER = "8080"
