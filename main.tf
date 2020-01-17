# Terraform code for backend config


terraform {
  backend "s3" {
  bucket = "engineering-remote-state-development"
  key    = "consul/terraform.tfstate"
  region = "us-east-1"
 }
}





module "remote_state" {
  source = "github.com/jknott-terraform/aws-remote-state-vpc"
  prefix = var.prefix
  environment = var.environment
}


data "terraform_remote_state" "vpc"{
  backend = "s3"
  config = {
    region = "us-east-1" 
    bucket = "engineering-remote-state-development"
    key = "vpc/terraform.tfstate"
  }
}



