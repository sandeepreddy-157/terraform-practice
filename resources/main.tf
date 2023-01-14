provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "example" {
  name        = "example"
  description = "Example security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.example.id]
}

output "public_ip" {
  value = aws_instance.example.public_ip
}