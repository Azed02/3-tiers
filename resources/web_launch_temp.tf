resource "aws_launch_template" "web-lt" {
    name = "web-lt"
    image_id = "ami-0fff1b9a61dec8a5f"
    instance_type = "t2.micro"
    key_name = "key"
    user_data = filebase64("user_data.sh")

    network_interfaces {
    device_index    = 0
    security_groups  = [aws_security_group.web-asg-sg.id]
  }

  tag_specifications {

    resource_type = "instance"
    tags = {
      Name = "web launch template"
    }
  }
}