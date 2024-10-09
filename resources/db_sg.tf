# resource "aws_security_group" "db-sg" {
#     name        = "db-sg"
#     vpc_id = aws_vpc.my-vpc.id
    
#     ingress{
#         from_port = 3306
#         to_port   = 3306
#         protocol  = "tcp"
#         security_groups = [aws_security_group.app-asg-sg.id]

#     }

#     egress {
#         from_port = 0
#         to_port   = 0
#         protocol  = "-1"
#         cidr_blocks = ["0.0.0.0/0"]
#     }
  
# }