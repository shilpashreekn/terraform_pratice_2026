variable "ami_id_apache" {
    
    description = "The AMI ID to use for the Apache EC2 instance"

    type        = string
  
}

variable "instance_type_apache" {
    
    description = "The type of EC2 instance to launch for Apache"

    type        = string
  
}

variable "instance_name_apache" {
    
    description = "The name of the Apache EC2 instance"

    type        = string
  
}