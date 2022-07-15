module "ec2" {
  source = "./module/ec2"  
  instance_type = var.instance_type
  subnet1 = module.vpc.subnet1
  security_group_id = module.sg.security_group_id
}

module "vpc" {
  source="./module/vpc"
  vpc_cidr = var.vpc_cidr
  subnet1_cidr = var.subnet1_cidr
  subnet2_cidr = var.subnet2_cidr
  protocol = var.protocol
  all_cidr = var.all_cidr
  security_group_id = module.sg.security_group_id
}

module "sg" {
  source="./module/sg"
  all_cidr = var.all_cidr
  protocol = var.protocol
  
}