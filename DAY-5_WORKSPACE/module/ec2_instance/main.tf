provider "aws" {
    region = "ap-southeast-2"


}


variable "ami" {

description = " ami value we need pass "
type = string
}

variable "instance_type" {

    description = " instance value for env dev prod stage "

    type = string
}

variable "instance_name" {

    description = " this we ned to pass name to instance "

    type = string 
}

resource "aws_instance" "example" {

ami = var.ami
instance_type = var.instance_type

tags = {

Name = var.instance_name
}

}