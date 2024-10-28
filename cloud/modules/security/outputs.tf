output "security_group_ids" {
  value = [aws_security_group.smart_home_sg.id, aws_security_group.allow_3000.id, aws_security_group.db_sg.id, aws_security_group.db_sg.id]
}
