# variables.tf
variable "region" {
  description = "The AWS region to deploy resources into"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "The type of instance to launch"
  default     = "t2.micro"
}
