resource "aws_instance" "my_bastion_ec2" {
  ami = var.AMI

  key_name               = var.KEY_NAME
  instance_type          = var.INSTANCE_TYPE
  subnet_id              = aws_subnet.my-public-subnet-01.id
  vpc_security_group_ids = [aws_security_group.my_sg.id]


  tags = var.RESOURCE_TAGS
}

resource "aws_instance" "my_private_ec2" {
  ami = var.AMI

  key_name               = var.KEY_NAME
  instance_type          = var.INSTANCE_TYPE
  subnet_id              = aws_subnet.my-private-subnet-01.id
  vpc_security_group_ids = [aws_security_group.my_sg.id]


  tags = var.RESOURCE_TAGS
}

resource "aws_instance" "my_db_ec2" {
  ami = var.AMI

  key_name               = var.KEY_NAME
  instance_type          = var.INSTANCE_TYPE
  subnet_id              = aws_subnet.my-db-subnet-01.id
  vpc_security_group_ids = [aws_security_group.my_sg.id]


  tags = var.RESOURCE_TAGS
}


resource "aws_key_pair" "generated_key_pair" {
  key_name   = var.KEY_NAME
  public_key = file("${var.KEY_NAME}.pub")
}