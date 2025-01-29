terraform {
 required_version = ">= 1.0"

 backend "s3" {
bucket = "terraformgithubbucket"
 key = "fargate/terraform.tfstate"
 region = "us-east-1"
 }

 required_providers {
 aws = {
 source = "hashicorp/aws"
 version = "~> 3.0"
 }
 }
}
