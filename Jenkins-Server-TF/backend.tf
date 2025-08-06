terraform {
  backend "s3" {
    bucket         = "devsop-terraform-bucket"
    region         = "us-east-1"
    key            = "LockID"
    dynamodb_table = "devscopdb-table"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}