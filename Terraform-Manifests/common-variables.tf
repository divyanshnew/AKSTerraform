variable "location" {
 description = "This is the name of the resoure group" 
 type = string
}

variable "environment" {
  description = "Environment in ehich this project will be deployed"
  type = list(string)
}


