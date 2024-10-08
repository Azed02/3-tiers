resource "aws_lb" "web-lb" {
    name            = "web-lb"
    internal           = false
    load_balancer_type = "application"
    subnets = [aws_subnet.web-sub1.id,aws_subnet.web-sub2.id]
    security_groups = [aws_security_group.lb-web-sg.id]
}

resource "aws_lb_target_group" "target-group-web" {
  name     = "tg-web"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.my-vpc.id
  health_check {
    path    = "/"
    matcher = 200

  }
}

resource "aws_lb_listener" "alb_listener-web" {
  load_balancer_arn = aws_lb.web-lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-group-web.arn
  }
}