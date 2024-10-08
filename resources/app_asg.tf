resource "aws_autoscaling_group" "app-asg" {
    name = "app-asg"
    max_size = 4
    min_size = 1
    desired_capacity = 2
    vpc_zone_identifier  = [aws_subnet.app-sub1.id,aws_subnet.app-sub2.id]
    target_group_arns = [aws_lb_target_group.target-group-app.arn]
    


    launch_template {
      id      = aws_launch_template.app-lt.id
      version = "$Latest"
    }
  
}