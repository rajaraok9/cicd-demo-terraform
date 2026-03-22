variable "aws_region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "healthcare-cluster"
}
variable "github_username" {
  description = "GitHub username"
  default     = "rajaraok9"
}

variable "github_repo" {
  description = "GitHub repository name"
  default     = "cicd-demo-terraform"
}

# variable "account_id" {
#   description = "AWS Account ID"
#   default     = "785640717631"  # replace with your actual account ID
#
# }

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  sensitive = true
}

# variable "aws_access_key" {
#   description = "AWS access key for authentication"
#   type        = string
# }
#
# variable "aws_secret_key" {
#   description = "AWS secret key for authentication"
#   type        = string
# }
