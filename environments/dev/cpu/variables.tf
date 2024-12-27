variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1" # Adjust as needed
}


# VPC Variables
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_tag_name" {
  description = "Name for the VPC"
  type        = string
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

variable "public_subnet_1_tag_name" {
  description = "Name for Public Subnet 1"
  type        = string
}

variable "public_subnet_2_tag_name" {
  description = "Name for Public Subnet 2"
  type        = string
}
variable "public_subnet_3_tag_name" {
  description = "The name tag for the third public subnet"
  type        = string  
}

variable "private_subnet_1_tag_name" {
  description = "Name for Private Subnet 1"
  type        = string
}

variable "private_subnet_2_tag_name" {
  description = "Name for Private Subnet 2"
  type        = string
}

variable "private_subnet_3_tag_name" {
  description = "Name for Private Subnet 3"
  type        = string
}

variable "aws_internet_gateway_tag_name" {
  description = "Tag for the Internet Gateway"
  type        = string
}

variable "aws_route_table_public_tag_name" {
  description = "Tag for the Public Route Table"
  type        = string
}

variable "aws_route_table_private_tag_name" {
  description = "Tag for the Private Route Table"
  type        = string
}
variable "aws_availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

 


variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "eks_version" {
  description = "The version of the EKS cluster"
  type        = string
}

variable "node_group_name" {
  description = "The name of the EKS node group."
  type        = string
}

variable "instance_type" {
  description = "The instance types to be used for the node group."
  type        = string
}

variable "desired_size" {
  description = "The desired size of the node group."
  type        = number
}

variable "min_size" {
  description = "The minimum size of the node group."
  type        = number
}

variable "max_size" {
  description = "The maximum size of the node group."
  type        = number
}

variable "disk_size" {
  description = "The disk size in GB for EKS nodes."
  type        = number
}

variable "env" {
  description = "Environment value"
  type        = string
}

 

 