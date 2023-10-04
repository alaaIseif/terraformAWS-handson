resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.3.0/24"

  tags = {
    Name = "private_subnet_terra1"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.4.0/24"

  tags = {
    Name = "private_subnet_terra1"
  }
}