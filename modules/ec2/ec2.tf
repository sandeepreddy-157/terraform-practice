resource "aws_instance" "test" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.sgid]

}

variable "sgid"{}