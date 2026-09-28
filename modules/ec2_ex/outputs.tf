output "instance_id" {

    value = aws_instance.basic_example.id
  
}

output "instance_public_ip" {

    value = aws_instance.basic_example.public_ip
  
}
output "instance_public_dns" {

    value = aws_instance.basic_example.public_dns
  
}

