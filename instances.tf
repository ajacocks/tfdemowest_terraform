
data "aws_ami" "rhel_image" {
  most_recent = true
  owners = ["309956199498"]
  filter {
    name = "architecture"
    values = ["x86_64"]
  }
  filter {
    name = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name = "name"
    values = ["RHEL-9*"]
  }
}

resource "aws_instance" "dbserver" {
  ami                         = data.aws_ami.rhel_image.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.ssh_key.key_name
  vpc_security_group_ids      = [aws_security_group.tfsg.id]
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  tags = {
    Name = "dbserver-tf"
  }
}

resource "aws_instance" "webserver" {
  ami                         = data.aws_ami.rhel_image.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.ssh_key.key_name
  vpc_security_group_ids      = [aws_security_group.tfsg.id]
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  tags = {
    Name = "webserver-tf"
  }
}
