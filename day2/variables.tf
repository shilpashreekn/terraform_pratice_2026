variable "ami_id_mumbai" {

    type = string
}

variable "ami_id_sydney" {
    type = string
}

variable "instance_type" {

    type = string 
}

variable "instance_name_mumbai" {

    type = string
}

variable "instance_names_sydney" {

    type = string
    sensitive = true
}

variable "access_key" {

    type = string
    sensitive = true
}
variable "secret_key" {

    type = string
}