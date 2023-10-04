resource "aws_nat_gateway" "nat" {
    allocation_id = aws_eip.eip.id
    subnet_id = aws_subnet.private_subnet.id


    tags = {
      Name= "nat_terra1"
    }
  
}