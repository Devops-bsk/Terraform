resource "aws_lb" "Mylb" {
  internal = false
  load_balancer_type = "application"
  subnets = [aws_subnet.pvt1.id, aws_subnet.public3.id]

}
resource "aws_lb_target_group" "my-tg" {
  name = "my-tg"
  protocol = "HTTP"
  port = 80
  vpc_id = aws_vpc.myvpc1.id
}