resource "aws_route_table_association" "private_association" {
  count=2
  subnet_id      = aws_subnet.private_subnet[count.index].id
  route_table_id = aws_route_table.private_route_table.id
}