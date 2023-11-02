module "ec2_instance" {
  source        = "terraform-aws-modules/ec2-instance/aws"
  ami           = data.aws_ami.devops_practice
  instance_type = "t2.micro"

  vpc_security_group_ids = [local.security_group_id]
  subnet_id              = local.public_subnet_ids[0] # us-east-1a

  tags = {
    Name        = "test"
    Terraform   = "true"
    Environment = "dev"
  }
}
