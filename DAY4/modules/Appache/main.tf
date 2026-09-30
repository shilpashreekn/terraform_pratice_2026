resource "aws_instance" "Apache" {

    ami           = var.ami_id_apache
    instance_type = var.instance_type_apache
    vpc_security_group_ids     = [aws_security_group.apache_sg.id]
   tags = {
        Name = var.instance_name_apache
    }
   

 user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install apache2 -y
              systemctl start apache2
              systemctl enable apache2

               echo "<h1>Welcome to My Apache2 Server</h1>" > /var/www/html/index.html
              echo "<p>This Apache2 server was created using Terraform.</p>" >> /var/www/html/index.html 
              EOF

}

resource "aws_security_group" "apache_sg" {

    name = "apache_sg"

    ingress {
        description = "Allow HTTP traffic"

        from_port   = 80
        to_port     = 80
        protocol    = "tcp"

        cidr_blocks = ["0.0.0.0/0"]

    }

    egress {
        description = "Allow all outbound traffic"

        from_port   = 0
        to_port     = 0
        protocol    = "-1"

        cidr_blocks = ["0.0.0.0/0"]

    }
}
