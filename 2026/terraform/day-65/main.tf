
# EC2 Instance
resource aws_instance ec2 {
        tags = merge(
	{
        Name = var.instance_name
        },var.tags)
        ami = var.ami_id
        instance_type = var.instance_type
        associate_public_ip_address = "true"
	vpc_security_group_ids = var.vpc_security_group_ids
        root_block_device {
        volume_size = 8
        }
        lifecycle {
        create_before_destroy = true
        }
        subnet_id = var.subnet_id
}
