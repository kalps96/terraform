provider "aws" {
  region = var.aws_region
  access_key = "AKIA4VP6NVYTMJKCJIUM"
  secret_key = "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"
}

resource "aws_instance" "ec2instance" {
 ami         = var.ec2_ami
 instance_type = var.instance_type
 key_name = var.ec2_keypair
 count = var.ec2_count
 vpc_security_group_ids = var.vpc_security_group_ids
 subnet_id = var.subnet_id
}
