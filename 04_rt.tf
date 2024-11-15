resource "aws_route_table" "ssuojae_rt" {
  vpc_id = aws_vpc.ssuojae_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ssuojae_ig.id
  }

  tags = {
    Name = "ssuojae-rt"
  }
}
