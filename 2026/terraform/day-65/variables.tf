# AMI ID
variable ami_id {
type = string
}

# Instance Type
variable instance_type {
default = "t3.micro"
type = string
}

# subnet ID
variable subnet_id {
type = string
}

# Security group IDs
variable vpc_security_group_ids {
default = []
type = list(string)
}

# Instance Name 
variable instance_name {
default = "ServerA"
type = string
}

# tags
variable tags {
default = {}
type = map(string)
}

