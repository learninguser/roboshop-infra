# output "public_subnets_info" {
#   value = module.this.public_subnets
# }

output "vpc_id" {
  value = local.vpc_id
}

output "azs" {
  value = module.this.azs
}