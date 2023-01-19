resource "aws_instance" "test1"{
  count = 2
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t2.micro"
  tags = {
    Name = "instance-${count.index}"
  }
}

output "public_ip" {
  value = aws_instance.test1.*.public_ip
}

variable "amis"  {
  default = [
  "ami-0a017d8ceb274537d",
  "ami-0bb6af715826253bf"
  ]
}

resource "aws_instance" "test2"{
  count = length(var.amis)
  ami = var.amis(count.index)
  //ami = element(var.amis, count.index)
  instance_type = "t2.micro"
  tags = {
    Name = "amis-${count.index}"
  }
}
