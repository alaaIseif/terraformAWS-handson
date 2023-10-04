resource "aws_instance" "application" {
  ami           = "ami-06e46074ae430fba6" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet.id
  key_name = aws_key_pair.tf-key-pair.key_name
  vpc_security_group_ids = [aws_security_group.private_sg.id]


  tags = {
    Name = "application_terra"
  }
}


resource "aws_instance" "application2" {
  ami           = "ami-06e46074ae430fba6" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet2.id
  key_name = aws_key_pair.tf-key-pair.key_name
  vpc_security_group_ids = [aws_security_group.private_sg.id]

  tags = {
    Name = "application2_terra"
  }

}