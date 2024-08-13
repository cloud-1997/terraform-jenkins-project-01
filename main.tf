resource "aws_instance" "demo-instance-007" {
  ami           = var.ami
  instance_type = var.instance_type
}
