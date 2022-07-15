variable "vpc_cidr" {
  
}
variable "enable_dns_hostnames" {
    type = bool
    default = false
}
variable "subnet1_cidr" {
  
}
variable "subnet2_cidr" {
  
}
variable "instances_ingress_ports"{
  type= list (number)
  default= [80,22]
}
variable "protocol" {
  type = list (string)
  #default = ["tcp","http","-1"]
}
variable "map_public_ip_on_launch" {
  type = bool
  default = true
}
variable "instances_egress_ports" {
  type= list (number)
  default= [0]
}
variable "all_cidr" {
  
}
variable "security_group_id" {
  
}