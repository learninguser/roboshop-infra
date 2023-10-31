module "this" {
  project_name = var.project_name
  source       = "../terraform-aws-vpc"
  cidr_block   = var.cidr_block
  common_tags  = var.common_tags
  vpc_tags     = var.vpc_tags
  igw_tags     = var.igw_tags

  # Public subnet creation
  public_subnet_cidr  = var.public_subnet_cidr
  public_subnet_names = var.public_subnet_names
  nat_gateway_tags = var.nat_gateway_tags

  # Private subnet creation
  private_subnet_cidr  = var.private_subnet_cidr
  private_subnet_names = var.private_subnet_names

  # Database subnet creation
  database_subnet_cidr  = var.database_subnet_cidr
  database_subnet_names = var.database_subnet_names

  # Route table creation
  public_route_table_tags   = var.public_route_table_tags
  private_route_table_tags  = var.private_route_table_tags
  database_route_table_tags = var.database_route_table_tags
  db_subnet_group_tags = var.db_subnet_group_tags
}
