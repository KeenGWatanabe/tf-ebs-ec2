terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
     version = "5.83.1"
   }
   http = {
      source = "hashicorp/http"
      version = "~> 3.0"
   }
 }
}
provider "aws" {
 region = var.aws_region
}