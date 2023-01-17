terraform {
  backend "s3" {
    bucket = "terraform-crazy"
    key = "demo/terraform.tfstate"
    region = "us-east-1"
  }
}


variable "sample"{
 default = "hello"
}

output "sample" {
  value = var.sample
}