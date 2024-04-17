resource "aws_eip" "elastic" {
  domain = "vpc"
}


resource "aws_nat_gateway" "nat" {
  subnet_id     = aws_subnet.my-public-subnet-01.id
  allocation_id = aws_eip.elastic.id

  tags = var.RESOURCE_TAGS
  depends_on = [aws_internet_gateway.my_gw]
}