terraform {
  backend "s3" {
    bucket = "my-back-buck"
    key    = "terraform.tfstate"
    region = "eu-west-3"
    encrypt = true
    
  }
}