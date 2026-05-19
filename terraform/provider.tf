terraform {
  required_version = ">= 1.5.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.28, < 7.0"
    }
  }
}

locals {

  region             = "eu-west-1"
  name               = "tws-eks-cluster-new"
  kubernetes_version = "1.33"
  vpc_cidr           = "10.0.0.0/16"
  azs                = ["eu-west-1a", "eu-west-1b"]
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets    = ["10.0.3.0/24", "10.0.4.0/24"]
  intra_subnets      = ["10.0.5.0/24", "10.0.6.0/24"]
  tags = {
    example = local.name
  }

}

provider "aws" {

  region = local.region

}
