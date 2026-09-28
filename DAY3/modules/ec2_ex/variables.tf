variable "ami_value" {
    description = "The AMI ID to use for the EC2 instance"
    type        = string

  
}

variable "instance_type_value" {
    description = "The instance type to use for the EC2 instance"
    type        = string
    default     = "t2.micro"
}

variable "instance_name" {
    description = "The name to use for the EC2 instance"
    type        = string
    default     = "BasicExampleInstance"
}