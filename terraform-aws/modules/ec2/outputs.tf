output "instance_state" {
  description = "Status Instância"
  value       = aws_instance.ec2_instance.*.instance_state
}

output "instance_public_dns" {
  description = "Endereço DNS público da instância ec2"
  value       = aws_instance.ec2_instance.*.public_dns
}

output "instance_public_ip" {
  description = "Endereço IP público da instância ec2"
  value       = aws_instance.ec2_instance.*.public_ip
}
