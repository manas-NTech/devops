terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.82.2"
        }
    }
}

provider "aws" {
    region = "us-east-1"
    access_key = var.access_key
    secret_key = var.secret_key
}

resource "aws_vpc" "myvpc" {
    cidr_block = "20.0.0.0/16"
}

resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = "t2.micro"

tags = {
    Name = "ec2machine"
}
}