output "test" {
  value = "Helo"
}

data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

output "AMI_ID" {
  value = data.aws_ami.example.id
}


}

output "AMI_ID" {
  value = data.aws_ami.example.id
}

