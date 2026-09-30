output "instance_id" {
    value = aws_instance.httpd.id
}

output "instance_public_ip" {
    value = aws_instance.httpd.public_ip
}