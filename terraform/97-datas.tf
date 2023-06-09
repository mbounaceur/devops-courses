data "aws_ami" "latest_amazon_linux_2023" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  owners = ["amazon"]
}

data "template_file" "inventory" {
  template = file("${path.module}/templates/inventory.tpl")
  vars = {
    public_ip = aws_instance.my-ec2.public_ip
  }
}