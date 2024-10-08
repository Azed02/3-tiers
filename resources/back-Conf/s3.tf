resource "aws_s3_bucket" "azed02-buck" {
    bucket = "back-buck"
}

resource "aws_s3_bucket_versioning" "buck-vers" {
    bucket = aws_s3_bucket.azed02-buck.id
    versioning_configuration {
        status = "Enabled"
    }
}

resource "aws_s3_bucket_acl" "buck-acl" {
    bucket = aws_s3_bucket.azed02-buck.id
    acl    = "private"
}