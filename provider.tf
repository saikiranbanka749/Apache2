terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

  }

}
provider "aws" {
region = "ap-south-1"
 access_key = "AKIASDQ7Y6UFCIKDXOEY"
  secret_key = "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"

}