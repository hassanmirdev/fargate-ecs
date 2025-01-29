terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "fargate-example/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}
