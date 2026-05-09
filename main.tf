# 1. Tell Terraform we want to use AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# 2. Set your region (London is eu-west-2)
provider "aws" {
  region = "eu-west-2"
}

# 3. Create a Virtual Private Cloud (VPC) - Your private 'slice' of the cloud
resource "aws_vpc" "devops_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "manikanta-project-vpc"
    Environment = "Dev"
  }
}
# Infrastructure complete - ready for plan
