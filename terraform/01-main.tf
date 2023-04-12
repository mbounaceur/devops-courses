resource "aws_instance" "my-ec2" {
  ami                         = data.aws_ami.latest_amazon_linux_2023.id
  associate_public_ip_address = true
  instance_type               = var.instance_type
  iam_instance_profile        = var.iam_instance_profile
  vpc_security_group_ids      = [aws_security_group.sg-epita.id]
  key_name                    = "epita"

  #   tags = {
  #     Name = "EPITA"
  #   }

}

resource "aws_security_group" "sg-epita" {
  name_prefix = "sg_epita"
  description = "SG used in my courses"

  # Règle pour autoriser tout le trafic
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "all"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "all"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "local_file" "ansible_inventory" {
  filename = "${path.module}/../ansible/inventory"
  content  = data.template_file.inventory.rendered
}