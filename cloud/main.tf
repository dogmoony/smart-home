module "vpc" {
  source          = "./modules/networking"
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
}

module "database" {
  source = "./modules/database"
  vpc_id = module.vpc.vpc_id
}
