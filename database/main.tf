provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "terraform-food-fusion"
    key    = "prod/terraform-postgres.tfstate"
    region = "us-east-1"
  }
}

provider "github" {
  token = var.github_token
  owner = "Food-fusion-Fiap" # Nome da organização
}

resource "github_actions_organization_secret" "db_host_secret" {
  secret_name     = "POSTGRES_HOST_CUSTOMER"
  plaintext_value = replace(aws_db_instance.default.endpoint, ":5432", "")
  visibility      = "all"
}