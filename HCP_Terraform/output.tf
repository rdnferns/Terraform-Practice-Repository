output "instance_hostname" {
  description = "Will higlight the private DNS name of the instance created"
  value       = aws_instance.app_server.private_dns
}

/*
output "instance_pub_hostname" {
  description = "Will highlight the public DNS name of the instance created"
  value       = aws_instance.app_server.public_dns
}
*/
