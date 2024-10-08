resource "aws_nat_gateway" "my-ngw" {
    allocation_id = aws_eip.my-eip.id
    subnet_id = aws_subnet.web-sub1.id
}