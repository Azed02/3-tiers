resource "aws_subnet" "web-sub1" {
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
}

resource "aws_subnet" "web-sub2" {
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-1b"
}

resource "aws_subnet" "app-sub1" {
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "us-east-1a"
}

resource "aws_subnet" "app-sub2" {
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = "10.0.4.0/24"
    availability_zone = "us-east-1b"
}

resource "aws_subnet" "db-sub1" {
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = "10.0.5.0/24"
    availability_zone = "us-east-1a"
}

resource "aws_subnet" "db-sub2" {
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = "10.0.6.0/24"
    availability_zone = "us-east-1b"
}