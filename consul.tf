
module "consul" {
  source            = "github.com/jknott-terraform/aws-consul-module"
  environment       = var.environment
  token             = var.token
  encryption_key    = var.encryption_key
  vpc_id            = var.vpc_id 
  public_subnet_id  = var.public_subnet_id 
  region            = var.region 
  key_name          = var.key_name
  private_key_path  = var.private_key_path
}


