variable "region" {
  default = "us-east-2"
  
}

variable "instance_type" {
  
}
variable "vpc_cidr" {
  
}
variable "subnet1_cidr" {
  
}
variable "subnet2_cidr" {
  
}
variable "protocol" {
  type = list (string)
  #default = ["tcp","http","-1"]
}
variable "all_cidr" {
  type = list (string)
  #default = ["0.0.0.0/0"]
}