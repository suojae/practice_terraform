resource "aws_lb" "ssuoaje_alb" {
  name               = "ssuojae-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.ssuojae_sg.id]
  subnets = [aws_subnet.ssuojae_puba.id, aws_subnet.ssuojae_pubc.id]

  tags = {
    Name = "ssuojae-alb"
  }
}

output "load_name" {
  value = "aws_lb.ssuoaje_alb.dns_name"
}