resource "aws_lb_listener" "ssuojae-albli" {
  load_balancer_arn = aws_lb.ssuoaje_alb.arn
  port = 80
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.ssuojae_albtg.arn
  }
}