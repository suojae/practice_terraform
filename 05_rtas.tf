resource "aws_route_table_association" "ssuojae_rtas_puba" {
  subnet_id      = aws_subnet.ssuojae_puba.id
  route_table_id = aws_route_table.ssuojae_rt.id
}

resource "aws_route_table_association" "ssuojae_rtas_pubc" {
  subnet_id      = aws_subnet.ssuojae_pubc.id
  route_table_id = aws_route_table.ssuojae_rt.id
}
