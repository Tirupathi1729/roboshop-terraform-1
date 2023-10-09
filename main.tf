module "components" {
  source   = "git::https://github.com/Tirupathi1729/tf-module-basic-test-monitoring.git"
  for_each = var.components

                                          #style convention       =  some data
  zone_id           = var.zone_id
  security_groups   = var.security_groups
  name              = each.value["name"]
  instance_type     = each.value["instance_type"]
  value             = var.value
  #monitoring_ingress_cidr = var.monitoring_ingress_cidr
  #component         = var.component

}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "dev-roboshop"
  cluster_version = "1.28"

  cluster_endpoint_public_access  = false

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  vpc_id                   = "vpc-095dcad0c8ac8c419"
  subnet_ids               = ["subnet-020183a8e3b35f36a", "subnet-051bd2007b0b9f760", "subnet-0c36dc87917c0e9fd", "subnet-0cb70c410f6cf97ff", "subnet-0cb0a9fa56cb1ae29", "subnet-0fa7eed7e4760b0a2"]
  control_plane_subnet_ids = ["subnet-020183a8e3b35f36a", "subnet-051bd2007b0b9f760", "subnet-0c36dc87917c0e9fd", "subnet-0cb70c410f6cf97ff", "subnet-0cb0a9fa56cb1ae29", "subnet-0fa7eed7e4760b0a2"]


  eks_managed_node_groups = {
    blue = {}
    green = {
      min_size     = 1
      max_size     = 10
      desired_size = 1

      instance_types = ["t2.micro"]
      capacity_type  = "SPOT"
    }
  }


  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}