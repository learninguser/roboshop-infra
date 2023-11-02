module "records" {
  source  = "terraform-aws-modules/route53/aws//modules/records"
  version = "~> 2.0"

  zone_name = var.domain_name
  for_each  = local.ip_address

  records = [
    {
      name    = "${each.key}-dev"
      type    = "A"
      ttl     = 1
      records = [each.key == "Web" ? each.value.public_ip : each.value.private_ip]
    }
  ]
}
