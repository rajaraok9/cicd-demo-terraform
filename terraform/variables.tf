variable "aws_region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "healthcare-cluster"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  sensitive = true
}

variable "aws_access_key" {
  description = "AWS access key for authentication"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS secret key for authentication"
  type        = string
}
