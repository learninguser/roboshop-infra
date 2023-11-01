module "sg" {
  source = "../terraform-aws-sg"
  sg_name = var.sg_name
  description = var.description
  vpc_id = local.vpc_id
  project_name = var.project_name
  ingress = var.ingress
  common_tags = var.common_tags
  sg_tags = var.sg_tags
}