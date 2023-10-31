locals {
  vpc_id = module.this.vpc_id
  azs = module.this.azs
  public_subnet_ids = module.this.public_subnet_ids
}