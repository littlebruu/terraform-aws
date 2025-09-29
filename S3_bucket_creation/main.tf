terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "tf_m1_BrunaLab"
}

# Creating a bucket
resource "aws_s3_bucket" "curso_aws_terraform" {
  bucket = "bucket-criado-no-terraform"

  tags = {
    CreatedAt = "2025-09-03"
  }
}
