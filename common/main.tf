provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVMKXCT6UDLQ7S3UW"
  secret_key = "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"
}

resource "aws_instance" "centos" {
  ami ="ami-0a017d8ceb274537d"
  instance_type ="t2.micro"
}