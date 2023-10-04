resource "aws_subnet" "private_subnet" {
  count             = 2
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = element(var.private_subnets_cidr_blocks, count.index)

  tags = {
    Name = "private_subnet_terra1"
  }
}