resource "aws_instance" "ec2_inst_lin" {
    ami = "ami-0b614a5d911900a9b"
    instance_type = var.instance_type
    subnet_id = var.subnet1
    #security_group_id = var.security_group_id   
}