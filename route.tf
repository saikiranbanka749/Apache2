resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw1.id
  }
}
resource "aws_route_table_association" "rta" {
  route_table_id = aws_route_table.rt1.id
  subnet_id      = aws_subnet.subnet1.id
}