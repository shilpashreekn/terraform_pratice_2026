module "appache2" {

    source= "./modules/Appache"
    providers = {
        aws = aws.sydney
    }

    ami_id_apache = var.ami_id_apache
    instance_type_apache = var.instance_type_apache
    instance_name_apache =  var.instance_name_apache

}

module "httpd" {

    source= "./modules/httpd"

    providers = {
        aws = aws.mumbai
    }

    ami_id_httpd = var.ami_id_httpd
    instance_type_httpd = var.instance_type
    instance_name_httpd =  var.instance_name_httpd

}