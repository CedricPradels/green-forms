terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.21"
    }
  }

  required_version = ">= 1.4.0"
}

provider "aws" {
  region = "eu-west-3"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "green-forms"
}

resource "aws_s3_bucket_website_configuration" "website-bucket" {
  bucket = aws_s3_bucket.bucket.id

  index_document {
    suffix = "index.html"
  }
}
