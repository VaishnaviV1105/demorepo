resource "aws_subnet" "subnet1" {
  cidr_block              = var.subnet1_cidr
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags= {
    Name="subnet1"
  }
}
resource "aws_subnet" "subnet2" {
  cidr_block              = var.subnet2_cidr
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags= {
    Name="subnet2"
  }
}