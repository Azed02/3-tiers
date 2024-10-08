resource "aws_route_table" "private-rt" {
    vpc_id = aws_vpc.my-vpc.id
    route{
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.my-ngw.id
    }

    tags = {
      Name = "Private-route-table"
    }
}

resource "aws_route_table_association" "app-sub1-rt" {
    subnet_id = aws_subnet.app-sub1.id
    route_table_id = aws_route_table.private-rt.id
  
}

resource "aws_route_table_association" "app-sub2-rt" {
    subnet_id = aws_subnet.app-sub2.id
    route_table_id = aws_route_table.private-rt.id
}