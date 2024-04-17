resource "aws_internet_gateway" "my_gw" {
  vpc_id = aws_vpc.main.id

  tags = var.RESOURCE_TAGS
}