variable "sample" {
  default ="hello sandeep"
}

variable "sample1" {
  default ="hello devops team"
}

output "sample" {
  value = var.sample
  value = var.sample1
}