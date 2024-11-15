resource "aws_route_table" "ssuojae_natrt" {
  vpc_id = aws_vpc.ssuojae_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ssuojae_nat.id
  }

  tags = {
    Name = "ssuojae-natrt"
  }
}
