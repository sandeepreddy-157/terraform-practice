resource "aws_instance" "test" {
  ami = "vpc-04c5c896c4d9202bd"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.sgid]

}

variable "sgid"{}