#default variable type
variable "sample" {
  default ="hello sandeep"
}

variable "sample1" {
  default ="hello devops team"
}

#refering default variable
output "sample" {
  value = var.sample
}

#string variable type
variable "sample0" {
  default = "hello string"
}

#number data type
variable "sample2"{
  default = 100
}

#boolean data type
variable "sample3" {
  default = true
}


#list data type
variable "list" {
  default = [
    "sandeep",
     100,
    true
  ]
}

#map variable type
variable "map1" {
  default = {
    string = "abbadi",
    number = 200,
    boolean = true

  }
}

#refering string data type

output "string1" {
  value = var.sample0
}




























































