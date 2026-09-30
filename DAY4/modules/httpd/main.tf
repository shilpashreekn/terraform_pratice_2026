resource "aws_instance" "httpd" {

    ami           = var.ami_id_httpd
    instance_type = var.instance_type_httpd

    vpc_security_group_ids     = [aws_security_group.httpd_sg.id]

    tags = {
        Name = var.instance_name_httpd
    }

user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd -y
              systemctl start httpd
              systemctl enable httpd

              echo "<h1>Welcome to My HTTPD Server</h1>" > /var/www/html/index.html
                echo "<p>This server was created using Terraform.</p>" >> /var/www/html/index.html

              EOF
  
}

resource "aws_security_group" "httpd_sg" {

    name = "httpd_sg"

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
