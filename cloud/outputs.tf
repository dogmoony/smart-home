output "login_details" {
  value       = module.app-server.ssh_login
  description = "Connect to your EC2 instances using their Public DNS"
}

output "instance_id" {
  value = module.app-server.id
}
