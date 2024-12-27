terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# VPC Module
module "vpc" {
  source = "../../../modules/vpc"
  vpc_cidr_block                   = var.vpc_cidr_block
  public_subnet_cidr_blocks        = var.public_subnet_cidr_blocks
  private_subnet_cidr_blocks       = var.private_subnet_cidr_blocks
  aws_availability_zones           = var.aws_availability_zones
  vpc_tag_name                     = var.vpc_tag_name
  aws_route_table_public_tag_name  = var.aws_route_table_public_tag_name
  aws_route_table_private_tag_name = var.aws_route_table_private_tag_name
  aws_internet_gateway_tag_name    = var.aws_internet_gateway_tag_name
  public_subnet_1_tag_name         = var.public_subnet_1_tag_name
  public_subnet_2_tag_name         = var.public_subnet_2_tag_name
  public_subnet_3_tag_name         = var.public_subnet_3_tag_name
  private_subnet_1_tag_name        = var.private_subnet_1_tag_name
  private_subnet_2_tag_name        = var.private_subnet_2_tag_name
  private_subnet_3_tag_name        = var.private_subnet_3_tag_name
  env                              = var.env
  region                           = var.region
}

# EKS Module
module "eks" {
  source             = "../../../modules/eks"
  region             = var.region
  cluster_name       = var.cluster_name
  node_group_name    = var.node_group_name
  desired_size       = var.desired_size
  max_size           = var.max_size
  min_size           = var.min_size
  instance_type      = var.instance_type
  disk_size          = var.disk_size
  env                = var.env
  private_subnet_ids = module.vpc.private_subnet_ids
  public_subnet_ids  = module.vpc.public_subnet_ids
  # subnet_ids         = local.custom_subnet_ids
  # # Pass outputs from VPC module
  # private_subnet_ids = module.vpc.private_subnet_ids
  # public_subnet_ids  = module.vpc.public_subnet_ids
}
