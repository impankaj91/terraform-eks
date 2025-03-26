module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.34.0"

  cluster_name    = "development"
  cluster_version = "1.31"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  cluster_endpoint_public_access = true

  cluster_addons = {
    metrics-server = {}
  }

  enable_cluster_creator_admin_permissions = true

  eks_managed_node_groups = {
    developmentNG = {

      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = ["t3.large"]

      min_size     = 2
      max_size     = 4
      desired_size = 2
      disk_size    = 20
      key_name     = "eks-machine-key"

    }

  }


}