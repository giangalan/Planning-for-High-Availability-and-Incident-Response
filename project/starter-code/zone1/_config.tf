terraform {
   backend "s3" {
     bucket = "udacity-gpm-terraform"
     key    = "terraform/terraform.tfstate"
     region = "us-east-2"
   }
 }

 provider "aws" {
   region = "us-east-2"
   
   default_tags {
     tags = local.tags
   }
 }

 provider "aws" {
  alias  = "usw1"
  region = "us-west-1"
}