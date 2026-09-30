output "mumbai_public_ip" {
  description = "Public IP of Mumbai server"
  value       = aws_instance.mumbai.public_ip
}

output "mumbai_instance_id" {
  description = "Instance ID of Mumbai server"
  value       = aws_instance.mumbai.id
}

output "sydney_public_ip" {
  description = "Public IP of Sydney server"
  value       = aws_instance.sydney.public_ip
}

output "sydney_instance_id" {
  description = "Instance ID of Sydney server"
  value       = aws_instance.sydney.id
}