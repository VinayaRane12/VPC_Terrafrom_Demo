terraform {
  backend "s3" {
    bucket = "demo-awspipeline"
    key    = "dev/terraform.tfstate"
    region = "eu-west-1a"
    shared_credentials_file = "%HOME%/.aws/credentials"
    profile = "mastek-admin"
  }
}

module "dev-mastek-vpc" {
  source = "../modules/vpc/"
  azs = "eu-west-1a"
  single_nat_gateway = true
}
