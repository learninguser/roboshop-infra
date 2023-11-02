module "ec2_instance" {
  for_each      = var.instances
  source        = "terraform-aws-modules/ec2-instance/aws"
  ami           = data.aws_ami.devops_practice.id
  instance_type = each.value

  vpc_security_group_ids = [local.security_group_id]
  subnet_id = (
    each.key == "Web" ? local.public_subnet_ids[0] :
    contains(["MySQL", "MongoDB", "Redis", "MySQL"], each.key) ?
    local.database_subnet_ids[0] : local.private_subnet_ids[0]
  )

  tags = merge(
    {
        Name = each.key
    },
    var.common_tags
  )
}
