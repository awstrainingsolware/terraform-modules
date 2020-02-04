provider "aws" {
  region     = "us-east-2"
  access_key = "ACCESSKEYXXXXXXX"
  secret_key = "SECRETKEYXXXXXXXX"
}

module "network" {
source = "./network"
	vpc_name = "module-vpc"
	vpc_cidr_block = "120.12.0.0/16"
	subnet_name = "module-subnet1"
	subnet_cidr_block = "120.12.1.0/24"
}

module "ec2" {
source = "./ec2_instance"
} 

module "security_group" {
source = "./security_group"
}
