region = "us-east-1"

# VPC Config
vpc_cidr_block                  = "10.0.0.0/16"
vpc_tag_name                    = "dev-vpc"
public_subnet_cidr_blocks = ["10.0.0.0/24","10.0.16.0/24","10.0.32.0/24"]
private_subnet_cidr_blocks      = ["10.0.4.0/24", "10.0.8.0/24", "10.0.12.0/24"]
aws_availability_zones = ["us-east-2a", "us-east-2b", "us-east-2c"]
public_subnet_1_tag_name        = "dev-public-subnet-1"
public_subnet_2_tag_name        = "dev-public-subnet-2"
public_subnet_3_tag_name        = "dev-public-subnet-3"
private_subnet_1_tag_name       = "dev-private-subnet-1"
private_subnet_2_tag_name       = "dev-private-subnet-2"
private_subnet_3_tag_name       = "dev-private-subnet-3"
aws_internet_gateway_tag_name   = "dev-igw"
aws_route_table_public_tag_name = "dev-public-route-table"
aws_route_table_private_tag_name = "dev-private-route-table"
######
cluster_name = "Floyo-dev"
eks_version = "1.31"
node_group_name = "Floyo-ng"
instance_type = "t3.medium"
desired_size = 1
min_size = 1
max_size = 3
disk_size = 40
 
