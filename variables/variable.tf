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

#refering number data type

output "number2"{
  value = var.sample2
}

#refereing boolean data type

output "boolean1" {
  value = var.sample3
}

#refering list data type with index type string

output "list4"{
  value = var.list[0]
}


#refering list data type witn index type number
output "list5"{
  value = var.list[1]
}

#refering list data type with boolean type
output "list6"{
  value = var.list[2]
}


#refer map variable with index type string key value

output "map4"{
  value = var.map1["string"]
}


















































