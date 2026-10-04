variable "ami" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = map(string)

  default = {
    dev   = "t3.micro"
    prod  = "t3.large"
    stage = "t3.medium"
  }
}

variable "instance_name" {
  description = "The name to assign to the EC2 instance"
  type        = map(string)

  default = {
    dev   = "dev-instance"
    prod  = "prod-instance"
    stage = "stage-instance"
  }
}




module "ec2_instance" {
  source = "./module/ec2_instance"
  ami = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, " t3.micro")
  instance_name = lookup(var.instance_name, terraform.workspace, "my-instance")

}