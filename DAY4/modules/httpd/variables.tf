variable "ami_id_httpd" {
    
    description = "The AMI ID to use for the Apache EC2 instance"

    type        = string
  
}

variable "instance_type_httpd" {
    
    description = "The type of EC2 instance to launch for Apache"

    type        = string
  
}

variable "instance_name_httpd" {
    
    description = "The name of the Apache EC2 instance"

    type        = string
  
}   