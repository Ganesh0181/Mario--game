
module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "mario-eks-cluster"
  cluster_version = "1.27"
  subnets         = ["subnet-xxxxxx", "subnet-yyyyyy"]
  vpc_id          = "vpc-xxxxxx"

  node_groups = {
    mario_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t3.medium"
    }
  }
}

output "kubeconfig" {
  value = module.eks.kubeconfig
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  value = module.eks.cluster_security_group_id
}
