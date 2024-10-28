module "vpc" {
  source          = "./modules/networking"
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
}

module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
}

module "app-server" {
  source             = "./modules/app-server"
  security_group_ids = module.security.security_group_ids
  public_subnets     = module.vpc.public_subnets_ids
}
