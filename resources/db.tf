# resource "aws_db_instance" "db" {
#     identifier = "mydb"
#     allocated_storage      = 10
#     engine                 = "mysql"
#     engine_version         = "5.7"
#     instance_class         = "db.t3.micro"
#     username               = "asmaez"
#     password               = "password"
#     vpc_security_group_ids = [aws_security_group.db-sg.id]
#     multi_az               = true
#     db_subnet_group_name = aws_db_subnet_group.db-sub-group.name
#     skip_final_snapshot = true
# }