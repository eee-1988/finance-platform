provider "aws" {
  region = "ap-northeast-1"
}

module "vpc" {
  source = "../../modules/vpc"

  cidr = "10.0.0.0/16"
}

module "eks" {
  source = "../../modules/eks"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
}

module "rds" {
  source = "../../modules/rds"
}

module "redis" {
  source = "../../modules/redis"
}

module "alb" {
  source = "../../modules/alb"

  subnet_ids = module.vpc.public_subnets
}

module "monitoring" {
  source = "../../modules/monitoring"
}