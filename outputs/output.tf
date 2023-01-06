data "aws_ami" "example" {
  most_recent = true
  name_regex = "Centos-8-Devops-Practice"
}

output "AMI_ID" {
  value = data.aws_ami.example.id
}