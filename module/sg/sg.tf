resource "aws_security_group" "sg" {
  name   = "instance-sg"


  dynamic "ingress" {
    for_each = var.instances_ingress_ports
    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = var.protocol[0]
      cidr_blocks = var.all_cidr
    }
  }
  dynamic "egress" {
    for_each = var.instances_egress_ports
    content {
      from_port = egress.value
      to_port = egress.value
      protocol = var.protocol[2]
      cidr_blocks = var.all_cidr
    }
  }
}