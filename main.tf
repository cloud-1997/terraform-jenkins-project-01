resource "aws_instance" "demo-instance-009" {
  ami           = var.ami
  instance_type = var.instance_type
}
