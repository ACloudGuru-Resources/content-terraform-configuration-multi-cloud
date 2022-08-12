output "instance_ip" {
    value = concat(aws_instance.app_server.*.public_ip[""])[0]
}