variable "instances_ingress_ports"{
  type= list (number)
  default= [80,22]
}
variable "protocol" {
  type = list (string)
  #default = ["tcp","http","-1"]
}

variable "instances_egress_ports" {
  type= list (number)
  default= [0]
}
variable "all_cidr" {
  
}