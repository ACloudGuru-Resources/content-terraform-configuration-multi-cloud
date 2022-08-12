output "aws_instance_ip" {
  value = module.instances.aws.*.public_ip
}

output "azure_instance_ip" {
  value = module.instances.azure.*.public_ip
}