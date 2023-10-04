resource "aws_route_table_association" "public_association" {
  count=2
  subnet_id      = aws_subnet.public_subnet[count.index].id
  route_table_id = aws_route_table.public_route_table.id
}
