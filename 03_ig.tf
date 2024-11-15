resource "aws_internet_gateway" "ssuojae_ig" {
  vpc_id = aws_vpc.ssuojae_vpc.id

  tags = {
    Name = "ssuojae-ig"
  }
}
