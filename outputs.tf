# output "public_subnets_info" {
#   value = module.this.public_subnets
# }

output "vpc_id" {
  value = local.vpc_id
}

output "azs" {
  value = local.azs
}

output "public_subnet_ids" {
  value = local.public_subnet_ids
}

output "private_subnet_ids" {
  value = local.private_subnet_ids
}

output "database_subnet_ids" {
  value = local.database_subnet_ids
}

output "sg_id" {
  value = local.security_group_id
}

output "devops_practice_ami_id" {
  value = data.aws_ami.devops_practice.id
}