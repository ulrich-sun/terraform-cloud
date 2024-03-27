terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
#   access_key = "PUT YOUR OWN"
#   secret_key = "PUT YOUR OWN"
}

module "ec2" {
  source = "../modules/ec2module"
  instance_type = "t2.micro"
  aws_common_tag = {
    Name = "ec2-prod-franklin"
  }
  sg_name = "prod-sg"
}