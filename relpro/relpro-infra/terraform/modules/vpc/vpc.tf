provider "aws" {
  region  = var.region
}


terraform {
  backend "s3" {}
}

resource "aws_vpc" "default" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true

  tags = {
    Platform    = var.platform
    Project     = var.project
    Environment = var.environment
    Name        = "terraform-aws-vpc-${var.environment}"
  }
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id

  tags = {
    Platform    = var.platform
    Project     = var.project
    Environment = var.environment
    Name        = "internet-gateway-${var.environment}"
  }
}