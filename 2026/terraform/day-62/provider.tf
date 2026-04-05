# terraform block
terraform {
	required_providers {
		aws = {
 			source = "hashicorp/aws"
 			version = "6.38.0"
		}
	}
}

# provider block

provider aws {
 region = "eu-west-1"
}

