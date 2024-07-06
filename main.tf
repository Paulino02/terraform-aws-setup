provider "aws" {
region = "us-east-2"
}

resource "aws_instance" "my_ec2" {
ami = "ami-0862be96e41dcbf74"
instance_type = "t2.micro"
tags = {
Name = "MyEC2Instance"
}
}

resource "aws_s3_bucket" "my_bucket" {
bucket = "att-terraform-123456"
tags = {
Name = "MyS3Bucket"
Environment = "Test"
}
}