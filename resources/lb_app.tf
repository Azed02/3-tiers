resource "aws_lb" "app-lb" {
    name            = "app-lb"
    internal = false
    load_balancer_type = "application"
    subnets  = [aws_subnet.app-sub1.id,aws_subnet.app-sub2.id]
    security_groups = [aws_security_group.lb-app-sg.id]
  
}


resource "aws_lb_target_group" "target-group-app" {
  name     = "tg-app"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.my-vpc.id
  health_check {
    path    = "/"
    matcher = 200

  }
}

resource "aws_lb_listener" "alb_listener-app" {
  load_balancer_arn = aws_lb.app-lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-group-app.arn
  }
}