resource "aws_db_subnet_group" "db-sub-group" {
    name       = "db-sub-group"
    subnet_ids = [aws_subnet.db-sub1.id , aws_subnet.db-sub2.id]

    tags = {
        Name = "db-sub-group"
    }
  
}