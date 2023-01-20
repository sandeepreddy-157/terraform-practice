variable "instances"{
  default = {
    one = {
      ami = "ami-0a017d8ceb274537d"
      instance_type ="t3.micro"
    }
    two = {
      ami ="ami-0bb6af715826253bf"
      instance_type= "t2.micro"
    }
  }
}

resource "aws_instance" "test3"{
  for_each = var.instances
  ami = each.value["ami"]
  instance_type = each.value["instance_type"]
  tags = {
    Name = "instance-${each.key}"
  }
}
