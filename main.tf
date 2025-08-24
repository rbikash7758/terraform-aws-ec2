provider "aws" {
  region = "us-east-1"
}

# EC2 instance with tags
resource "aws_instance" "myec2_with_tags" {
  ami           = "ami-06c68f701d8090592"
  instance_type = "t2.micro"
  tags = {
    Name = "myec2"
    Env  = "production"
  }
}

# EC2 instance without tags
resource "aws_instance" "myec2_without_tags" {
  ami           = "ami-06c68f701d8090592"
  instance_type = "t2.micro"
}
