output "public_ip" {
  value = aws_instance.my-ec2.public_ip
}

output "security_group_id" {
  value = aws_security_group.sg-epita.id
}