module "vpc" {
source = "./vpc"

  vpc_name = "${ var.vpc_name }"
  vpc_cidr_block = "${ var.vpc_cidr_block }"
}
 
module "subnet1" {
source = "./subnet"
  vpc_id = "${module.vpc.vpc_id}"
  subnet_name = "${var.subnet_name}"
  availability_zone = "${local.region}b"
  subnet_cidr_block = "${var.subnet_cidr_block}"
  
}

locals {
  region = "${data.aws_region.current.name}"
}

data "aws_region" "current" {}
