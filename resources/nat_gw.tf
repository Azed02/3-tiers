resource "aws_nat_gateway" "my-ngw" {
    allocation_id = aws_eip.my-eip.id
    connectivity_type = "public"
    
    subnet_id = aws_subnet.web-sub1.id

    depends_on = [aws_internet_gateway.my-igw]
}