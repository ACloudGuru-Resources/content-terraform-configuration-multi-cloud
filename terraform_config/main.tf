module "instance" {
  source = "./instance"

  platforms = ["aws", "azure"]
}

resource "aws_instance" "this" {
  for_each = contains(var.platforms, "aws") ? toset([for instance in range(var.instances) : tostring(instance)]) : []
  ...
}

resource "azurerm_linux_virtual_machine" "this" {
  for_each = contains(var.platforms, "azure") ? toset([for instance in range(var.instances) : tostring(instance)]) : []
  ...
}