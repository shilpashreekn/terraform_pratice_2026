variable "aws_region_sydney" {

    description = "The AWS region to deploy resources in"

    type        = string
}

variable "aws_region_mumbai" {

    description = "The AWS region to deploy resources in"

    type        = string
}



variable "instance_type" {

    description = "The type of EC2 instance to launch"

    type        = string
  
}

variable "instance_type_apache" {

    description = "The type of EC2 instance to launch"

    type        = string
  
}

variable "ami_id_apache" {

    description = "The AMI ID to use for the EC2 instance"

    type        = string
  
}

variable "ami_id_httpd" {

    description = "The AMI ID to use for the EC2 instance"

    type        = string
  
}

variable "instance_name_apache" {

    description = "The name of the EC2 instance"

    type        = string
  
}

variable "instance_name_httpd" {

    description = "The name of the EC2 instance"

    type        = string
  
}

