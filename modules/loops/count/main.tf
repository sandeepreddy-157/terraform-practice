resource "aws_instance" "myec2"{
  count = 2
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t2.micro"
  tags = {
    Name = "instance-${count.index}"
  }
}

output "public_ip" {
  value = aws_instance.myec2.*.public_ip
}