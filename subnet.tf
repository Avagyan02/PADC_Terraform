resource "aws_subnet" "my-public-subnet-01" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.PUBLIC_SUBNETS_CONFIGS_01.cidr_block
  map_public_ip_on_launch = var.PUBLIC_SUBNETS_CONFIGS_01.auto_assign_public_ip
  tags = var.PUBLIC_SUBNETS_CONFIGS_01.tags
}
resource "aws_subnet" "my-public-subnet-02" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.PUBLIC_SUBNETS_CONFIGS_02.cidr_block
  map_public_ip_on_launch = var.PUBLIC_SUBNETS_CONFIGS_02.auto_assign_public_ip
  tags = var.PUBLIC_SUBNETS_CONFIGS_02.tags
}
resource "aws_subnet" "my-private-subnet-01" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.PRIVATE_SUBNETS_CONFIGS_01.cidr_block
  map_public_ip_on_launch = var.PRIVATE_SUBNETS_CONFIGS_01.auto_assign_public_ip
  tags = var.PRIVATE_SUBNETS_CONFIGS_01.tags
}
resource "aws_subnet" "my-private-subnet-02" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.PRIVATE_SUBNETS_CONFIGS_02.cidr_block
  map_public_ip_on_launch = var.PRIVATE_SUBNETS_CONFIGS_02.auto_assign_public_ip
  tags = var.PRIVATE_SUBNETS_CONFIGS_02.tags
}
resource "aws_subnet" "my-db-subnet-01" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.DB_SUBNETS_CONFIGS_01.cidr_block
  map_public_ip_on_launch = var.DB_SUBNETS_CONFIGS_01.auto_assign_public_ip
  tags = var.DB_SUBNETS_CONFIGS_01.tags
}
resource "aws_subnet" "my-db-subnet-02" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.DB_SUBNETS_CONFIGS_02.cidr_block
  map_public_ip_on_launch = var.DB_SUBNETS_CONFIGS_02.auto_assign_public_ip
  tags = var.DB_SUBNETS_CONFIGS_02.tags
}