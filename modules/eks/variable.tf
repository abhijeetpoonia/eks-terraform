variable "region" {
  description = "Region for cloud resources"
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "eks_version" {
  description = "The version of the EKS cluster"
  type        = string
  default     = "1.31" 
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

variable "custom_vpc_name" {
  description = "The name of the custom VPC"
  type        = string
  default     = "MyCustomVPC"   
}

variable "public_subnet_ids" {
  description = "The name of the custom VPC"
  type        = list
}

variable "private_subnet_ids" {
  description = "The name of the custom VPC"
  type        = list
}

