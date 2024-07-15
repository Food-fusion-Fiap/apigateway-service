variable "region" {
  description = "The region where resources will be created and state will be stored"
  default     = "us-east-1"
}

variable "db_password" {
  description = "Password for the database"
  default     = ""
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "The name of the database"
  default     = ""
}

variable "db_username" {
  description = "The username for the database"
  default     = ""
}

variable "project_name" {
  description = "The name of the project"
  default     = "food_fusion"
}

variable "vpc" {
  description = "VPC"
  default     = "vpc-08d4dd1f33b0b24dc"
}

variable "subnetA" {
  description = "Subnet A"
  default     = "subnet-0131eb5733d8ea9dc"
}

variable "subnetB" {
  description = "Subnet B"
  default     = "subnet-0512d3c779b944470"
}

variable "subnetC" {
  description = "Subnet C"
  default     = "subnet-0f4621d2b83113cdf"
}

variable "github_token" {
  description = "The GitHub token for authentication"
  default     = ""
}