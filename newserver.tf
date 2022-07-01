provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA4VP6NVYTCGUNFUEI"
  secret_key = "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"
}

resource "aws_instance" "node1" {
  ami = "ami-02358d9f5245918a3"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0915448d5c6a613e6"]
  subnet_id = "subnet-0e3381fcf440eb1e0"
  key_name = "kubernts"
  user_data = file("installscript.sh")
}

resource "aws_ebs_volume" "EBS" {
  availability_zone = "us-east-1a"
  size = 20
  encrypted = true
  final_snapshot = true

tags= {
  Name = "terraform template"
 }
}

 
