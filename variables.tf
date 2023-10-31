variable "project_name" {
  default = "roboshop"
}
variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "common_tags" {
  default = {
    Project : "Roboshop"
    Terraform : true
    Environment : "Dev"
  }
}

variable "vpc_tags" {
  default = {
    Name : "Roboshop"
  }
}

variable "igw_tags" {
  default = {
    Name : "Roboshop"
  }
}

variable "public_subnet_cidr" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_names" {
  default = ["roboshop-public-1a", "roboshop-public-1b"]
}

variable "private_subnet_cidr" {
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "private_subnet_names" {
  default = ["roboshop-private-1a", "roboshop-private-1b"]
}

variable "database_subnet_cidr" {
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "database_subnet_names" {
  default = ["roboshop-database-1a", "roboshop-database-1b"]
}

variable "public_route_table_tags" {
  default = {
    Name: "roboshop-public"
  }
}

variable "private_route_table_tags" {
  default = {
    Name: "roboshop-private"
  }
}

variable "database_route_table_tags" {
  default = {
    Name: "roboshop-database"
  }
}

variable "nat_gateway_tags" {
  default = { }
}

variable "db_subnet_group_tags" {
  default = {}
}