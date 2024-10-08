resource "aws_security_group" "lb-app-sg" {    
    vpc_id      = aws_vpc.my-vpc.id
    
    # ingress {
    #     from_port   = 80
    #     to_port     = 80
    #     protocol    = "tcp"
    #     security_groups = [aws_security_group.web-asg-sg.id]
    # }
     ingress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      Name = "lb-app-sg"
    }
}