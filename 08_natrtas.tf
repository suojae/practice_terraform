resource "aws_route_table_association" "ssuoaje_natrtas_pria" {
  subnet_id      = aws_subnet.ssuojae_pria.id
  route_table_id = aws_route_table.ssuojae_natrt.id
}

resource "aws_route_table_association" "ssuojae_natrtas_pric" {
  subnet_id      = aws_subnet.ssuojae_pric.id
  route_table_id = aws_route_table.ssuojae_natrt.id
}

resource "aws_route_table_association" "ssuojae_natrtas_dba" {
  subnet_id      = aws_subnet.ssuojae_dba.id
  route_table_id = aws_route_table.ssuojae_natrt.id
}

resource "aws_route_table_association" "ssuojae_natrtas_dbc" {
  subnet_id      = aws_subnet.ssuojae_dbc.id
  route_table_id = aws_route_table.ssuojae_natrt.id
}