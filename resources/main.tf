resource "aws_instance" "test" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t2.micro"
}

