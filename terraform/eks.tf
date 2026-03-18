module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8.4"

  cluster_name    = var.cluster_name
  cluster_version = "1.29"

  # 1. Network Access (Solves the timeout issue)
  cluster_endpoint_public_access = true

  # 2. Authentication FIX (Solves the credentials issue)
  # In v20.x, these are direct module arguments
  authentication_mode                         = "API_AND_CONFIG_MAP"
  enable_cluster_creator_admin_permissions = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnets

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.medium"]

      min_size     = 1
      max_size     = 3
      desired_size = 2
      subnet_ids = module.vpc.public_subnets
    }
  }
}