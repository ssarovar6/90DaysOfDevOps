# VPC
resource aws_vpc vpc {
	cidr_block = "10.0.0.0/16"
	tags = {
	Name = "TerraWeek-VPC"
	}
}

# subnet
resource aws_subnet subnet {
	cidr_block = "10.0.1.0/24"
	vpc_id = aws_vpc.vpc.id # interpolation
	map_public_ip_on_launch = true
	tags = {
	Name = "TerraWeek-Public-Subnet"
	}
}

# Internet Gateway
resource aws_internet_gateway ig {
	vpc_id = aws_vpc.vpc.id	
}

# Route table
resource aws_route_table rt {
	vpc_id = aws_vpc.vpc.id
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.ig.id 
	}
}

# Route table association	
resource aws_route_table_association rt_association {
	subnet_id = aws_subnet.subnet.id
	route_table_id = aws_route_table.rt.id
}

# Security Group
resource aws_security_group sg {
	tags = {
		Name = "Terraweek_SG"
	}
	vpc_id = aws_vpc.vpc.id
}

# Ingress rule for 22
resource aws_vpc_security_group_ingress_rule ingress {
	security_group_id = aws_security_group.sg.id
	from_port = 22
	to_port = 22
	cidr_ipv4 = "0.0.0.0/0"
	ip_protocol       = "tcp"
}

# Ingress rule for 80
resource aws_vpc_security_group_ingress_rule ingress_rule {
	security_group_id = aws_security_group.sg.id
	from_port = 80
	to_port = 80
	cidr_ipv4 = "0.0.0.0/0"
	ip_protocol       = "tcp"
}

# Egress rule 
resource aws_vpc_security_group_egress_rule egress {
	security_group_id = aws_security_group.sg.id
	cidr_ipv4 = "0.0.0.0/0"
	ip_protocol       = "-1"
}


# EC2 Instance
resource aws_instance ec2 {
	tags = {
	Name = "Terraweek-Server"
	}
	ami = "ami-0324bce2436ce02b2"
	instance_type = "t3.micro"
	associate_public_ip_address = "true"
	vpc_security_group_ids = [aws_security_group.sg.id]
	root_block_device {
	volume_size = 10
	}
	lifecycle {
	create_before_destroy = true
	}
	subnet_id = aws_subnet.subnet.id
}

# s3 bucket
resource aws_s3_bucket mybucket {
		bucket = "bucket_012345"
		depends_on = [aws_instance.ec2]
}


