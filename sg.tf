resource "aws_security_group" "my_sg" {
  vpc_id = aws_vpc.main.id

  tags = var.RESOURCE_TAGS
}

resource "aws_security_group_rule" "public_ssh_in" {
  type        = "ingress"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = aws_security_group.my_sg.id
}