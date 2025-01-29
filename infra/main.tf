provider "aws" {
 region = "us-east-1"
}
module "vpc" {
 source = "./modules/vpc"
 vpc_cidr = "10.0.0.0/16"
 subnet_a_cidr = "10.0.1.0/24"
 subnet_b_cidr = "10.0.2.0/24"
}
