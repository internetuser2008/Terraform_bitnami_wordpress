data "aws_eks_cluster" "dev-cluster" {
  name = module.wordpressCL.cluster_id
}

data "aws_eks_cluster_auth" "dev-cluster" {
  name = module.wordpressCL.cluster_id
}
