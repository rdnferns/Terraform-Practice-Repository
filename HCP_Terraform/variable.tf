variable "instance_type" {
  description = "Variable that is used to declare the instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Variable that provides a tag name to the instance"
  type        = string
  default     = "learn-terraform"
}

variable "instance_key_pair" {
  description = "Variable that is used to assign a key-pair for the instance"
  type        = string
  default     = "YourPemkey"
}


