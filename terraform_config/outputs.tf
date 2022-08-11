output "instance_ip" {
  value = module.ec2-instance.public_ip
}

output "instance_tags" {
  value = module.ec2-instance.ec2_tags
}