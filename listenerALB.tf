resource "aws_alb_listener" "listener" {
  load_balancer_arn = aws_lb.Mylb.arn
  port = 80
  protocol = "HTTP"
  default_action {
    target_group_arn = "${aws_lb_target_group.my-tg.id}"
    type = "forward"
  }
}