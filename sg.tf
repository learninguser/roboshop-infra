module "sg" {
  source           = "../terraform-aws-sg"
  sg_name          = var.sg_name
  sg_description   = var.description
  vpc_id           = local.vpc_id
  project_name     = var.project_name
  sg_ingress_rules = var.ingress
  common_tags      = var.common_tags
  environment      = var.environment
  sg_tags          = var.sg_tags
}
