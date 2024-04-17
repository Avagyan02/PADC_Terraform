resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_gw.id
  }

  tags = var.RESOURCE_TAGS
}

resource "aws_route_table_association" "public-01" {
  depends_on     = [aws_subnet.my-public-subnet-01]
  route_table_id = aws_route_table.public_rt.id
  subnet_id      = aws_subnet.my-db-subnet-01.id
}
resource "aws_route_table_association" "public-02" {
  depends_on     = [aws_subnet.my-public-subnet-02]
  route_table_id = aws_route_table.public_rt.id
  subnet_id      = aws_subnet.my-db-subnet-02.id
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

    tags = var.RESOURCE_TAGS
}

resource "aws_route_table_association" "private-01" {
  depends_on     = [aws_subnet.my-private-subnet-01]
  route_table_id = aws_route_table.private_rt.id
  subnet_id      = aws_subnet.my-private-subnet-01.id
}
resource "aws_route_table_association" "private-02" {
  depends_on     = [aws_subnet.my-private-subnet-02]
  route_table_id = aws_route_table.private_rt.id
  subnet_id      = aws_subnet.my-private-subnet-02.id
}