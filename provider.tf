terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 6.37.0" # Terraform AWS provider version
    }
  }
  backend "s3" {
    bucket = "linga-devops-rs"
    key    = "shell-script-ec2"
    region = "us-east-1"
    dynamodb_table = "linga-devops-locking"
    }
  }
provider "aws" {
  # Configuration options
  region = "us-east-1"
}