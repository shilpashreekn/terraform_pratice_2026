resource "aws_instance" "mumbai" {
    ami = var.ami_id_mumbai
    instance_type = var.instance_type

    tags = {

        Name = "instance_name_mumbai"
    }

}

resource "aws_instance" "sydney" {
provider = aws.sydney
    ami = var.ami_id_sydney
    instance_type = var.instance_type

    tags = {

        Name = "instance_name_sydney"
    }

}