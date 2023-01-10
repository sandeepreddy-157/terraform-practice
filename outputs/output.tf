output "test" {
  value = "hello"
}

data "aws_ami" "example" {
  most_recent = true
  name_regex = "Centos-8-Devops-Practice"
  owners = ["973714476881"]

}

output "AMI_ID" {
  value = data.aws_ami.example.id
}

