output "rds_public_sg_id" {
  description = "RDS public security group ID"
  value       = aws_security_group.rds_public_sg.id
}

output "db_instance_endpoint" {
  description = "The connection endpoint"
  value       = replace(aws_db_instance.default.endpoint, ":5432", "")
}