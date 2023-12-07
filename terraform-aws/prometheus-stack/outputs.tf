output "instance_state" {
  description = "Status ec2 instance "
  value       = module.ec2.instance_state
}

output "instance_public_dns" {
  description = "Endereço DNS público da instância ec2"
  value       = module.ec2.instance_public_dns
}

output "instance_public_ip" {
  description = "Endereço IP público da instância ec2"
  value       = module.ec2.instance_public_ip
}

