resource "aws_autoscaling_group" "web-asg" {
    name = "web-asg"
    max_size = 4
    min_size = 1
    desired_capacity = 2
    vpc_zone_identifier = [ aws_subnet.web-sub1.id , aws_subnet.web-sub2.id ]
    target_group_arns= [aws_lb_target_group.target-group-web.arn]

  launch_template {
    id      = aws_launch_template.web-lt.id
    version = "$Latest"
  }
}