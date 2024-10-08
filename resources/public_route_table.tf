resource "aws_route_table" "public-rt" {
    vpc_id = aws_vpc.my-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my-igw.id
    }
    tags = {
      Name = "public-route-table"
    }
}

resource "aws_route_table_association" "web-sub1-rt" {
    subnet_id = aws_subnet.web-sub1.id
    route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "web-sub2-rt" {
    subnet_id = aws_subnet.web-sub2.id
    route_table_id = aws_route_table.public-rt.id
  
}