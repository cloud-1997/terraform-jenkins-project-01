variable "ami" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the instance"
  type        = string
  default     = "ami-04a81a99f5ec58529" # Default value, can be overridden
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro" # Default value, can be overridden
}