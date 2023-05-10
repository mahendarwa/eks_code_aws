variable "cluster_name" {
  type        = string
  description = "The name of the EKS cluster"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC where the EKS cluster will be created"
}

variable "subnet_ids" {
  type        = list(string)
  description = "A list of subnet IDs where the EKS cluster will be created"
}

variable "instance_types_general" {
  type        = list(string)
  description = "A list of instance types for the general node group"
  default     = ["t3.small"]
}

variable "instance_types_spot" {
  type        = list(string)
  description = "A list of instance types for the spot node group"
  default     = ["t3.micro"]
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the EKS cluster resources"
  default     = {
    Environment = "staging"
  }
}
