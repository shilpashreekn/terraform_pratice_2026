output "appache2_public_ip" {
  value = module.appache2.instance_public_ip
}

output "httpd_public_ip" {
  value = module.httpd.instance_public_ip
}