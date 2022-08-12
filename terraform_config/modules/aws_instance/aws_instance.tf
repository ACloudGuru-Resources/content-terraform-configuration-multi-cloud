resource "aws_instance" "app_server" { 
  ami           = var.ami_id
  instance_type = var.instance
  subnet_id     = var.subnet

  tags = {
    Name = "GuruAppServer"
  }
}