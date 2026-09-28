module "ec2_ex" {
        source = "./modules/ec2_ex"
        ami_value = var.ami_value
        instance_type_value = var.instance_type_value
        instance_name = var.instance_name
    }
  
