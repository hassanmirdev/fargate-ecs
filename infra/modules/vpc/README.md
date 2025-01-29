# VPC Module
This module creates a VPC in AWS with two public subnets, a route table, and an internet
gateway.
## Inputs
| Name | Description | Type | Default | Required |
|------------------|---------------------------------|--------|---------|----------|
| `vpc_cidr` | CIDR block for the VPC | string | n/a | yes |
| `subnet_a_cidr` | CIDR block for Subnet A | string | n/a | yes |
| `subnet_b_cidr` | CIDR block for Subnet B | string | n/a | yes |
## Outputs
| Name | Description |
|------------------|---------------------------------|
| `vpc_id` | The ID of the created VPC |
| `subnet_a_id` | The ID of Subnet A |
| `subnet_b_id` | The ID of Subnet B |
## Example Usage
```hcl
module "vpc" {
 source = "./modules/vpc"
 vpc_cidr = "10.0.0.0/16"
 subnet_a_cidr = "10.0.1.0/24"
 subnet_b_cidr = "10.0.2.0/24"
}
