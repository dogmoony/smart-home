output "ssh_login" {
  value = "ssh -i ./${aws_instance.app_server.key_name}.pem ubuntu@${aws_instance.app_server.public_dns}"
}

output "id" {
  value = aws_instance.app_server.id
}
