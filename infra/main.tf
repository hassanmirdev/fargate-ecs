provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
}

module "ecs" {
  source = "./modules/ecs"
}

module "iam" {
  source = "./modules/iam"
}

module "ecr" {
  source = "./modules/ecr"
}

module "s3" {
  source = "./modules/s3"
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
