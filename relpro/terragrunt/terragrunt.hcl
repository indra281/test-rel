terraform {
  source = "git::git@github.com:indra281/test-rel.git//relpro/relpro-infra/terraform/modules/vpc"
}




inputs = {
  environment = "dev"
  region = "us-east-1"
 

  vpc_cidr = "10.0.0.0/16"


}