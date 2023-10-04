resource "aws_subnet" "public_subnet" {  
  count             = 2
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = element(var.public_subnets_cidr_blocks, count.index)

   tags = {
    Name = "public_subnet_terra1"
  }
}