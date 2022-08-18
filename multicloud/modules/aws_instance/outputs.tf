output "instance_name" {
    value = aws_instance.inst.*.tags.Name
}