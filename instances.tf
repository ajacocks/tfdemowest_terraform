
resource "aws_instance" "dbserver" {
  ami                         = var.image
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.ssh_key.key_name
  vpc_security_group_ids      = [aws_security_group.tfsg.id]
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  tags = merge(local.tags,
    {
      Name = "dbserver-tf",
      Type = "dbservers"
    }
  )
}

resource "aws_instance" "webserver" {
  ami                         = var.image
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.ssh_key.key_name
  vpc_security_group_ids      = [aws_security_group.tfsg.id]
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  tags = merge(local.tags,
    {
      Name = "webserver-tf",
      Type = "webservers"
    }
  )
}