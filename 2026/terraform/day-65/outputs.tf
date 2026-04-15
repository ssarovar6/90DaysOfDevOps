# Instance ID
output instance_id {
value = aws_instance.ec2.id
}

# Public IP
output public_ip {
value = aws_instance.ec2[*].public_ip
}

# Private IP
output private_ip {
value = aws_instance.ec2[*].private_ip
}
