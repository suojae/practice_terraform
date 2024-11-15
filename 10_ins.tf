resource "aws_instance" "ssuojae_weba" {
  ami                         = "ami-0ee82191e264e07cc"
  instance_type               = "t2.micro"
  key_name                    = "ssuojae-key"
  vpc_security_group_ids      = [aws_security_group.ssuojae_sg.id]
  availability_zone           = "ap-northeast-2a"
  private_ip                  = "10.0.0.11"
  subnet_id                   = aws_subnet.ssuojae_puba.id
  associate_public_ip_address = true
  user_data = file("./install.sh")
}

output "public_ip" {
  value = aws_instance.ssuojae_weba.public_ip
}