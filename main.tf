provider "aws" {
    region     = "us-east-2"
}

resource "aws_instance" "web-server" {
    ami             = "ami-01cc34ab2709337aa"
    instance_type   = "t2.micro"
    tags = {
        Name = "MyEC2Server"
    }
}
