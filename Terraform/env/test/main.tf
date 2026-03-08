provider "aws" {
  region = "ap-northeast-2"
}
 
module "vpc" {
  source = "../../modules/vpc"
 
  cidr = var.vpc_cidr
}
