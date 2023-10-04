resource "aws_instance" "application" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.private_subnet.id
  key_name = aws_key_pair.tf-key-pair.key_name
  vpc_security_group_ids = [aws_security_group.private_sg.id]

  tags = {
    Name = "application_terra"
  }
}