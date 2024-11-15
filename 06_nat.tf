resource "aws_eip" "ssuojae_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "ssuojae_nat" {
  allocation_id = aws_eip.ssuojae_eip.id
  subnet_id     = aws_subnet.ssuojae_puba.id

  tags = {
    Name = "sssuojae-nat"
  }
}
