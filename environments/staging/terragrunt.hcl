include {
  path = find_in_parent_folders()
}

inputs = {
  cluster_name = "dev-cluster"
  region       = "us-west-2"
  vpc_id       = "vpc-123456"
  subnets      = ["subnet-abc123", "subnet-def456"]
  key_name     = "your-ssh-key"
  cluster_version = "1.21"

  # Inputs required for NGINX controller
  cluster_endpoint         = "your-eks-cluster-endpoint"
  cluster_ca_certificate   = "your-cluster-ca-cert"
  token                    = "your-cluster-auth-token"
  namespace                = "nginx-ingress"
}

dependency "eks" {
  config_path = "../../modules/eks"
}

dependency "namespaces" {
  config_path = "../../modules/namespaces"
}

dependency "nginx_controller" {
  config_path = "../../modules/nginx-controller"
}
