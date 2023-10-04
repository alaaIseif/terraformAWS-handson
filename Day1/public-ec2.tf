resource "aws_instance" "bastion" {
  ami           = "ami-06e46074ae430fba6" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  key_name = aws_key_pair.tf-key-pair.key_name
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
  #!/bin/bash
    echo '${tls_private_key.rsa-key.private_key_pem}' > /home/ec2-user/private_key.pem
    chmod 400 private_key.pem
  EOF

  tags = {
    Name = "bastion_terra"
  }
}


resource "aws_instance" "bastion2" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet2.id
  key_name =    aws_key_pair.tf-key-pair.key_name
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
  #!/bin/bash
    echo '${tls_private_key.rsa-key.private_key_pem}' > /home/ec2-user/private_key.pem
    chmod 400 private_key.pem
  EOF

  tags = {
    Name = "bastion2_terra"
  }

}