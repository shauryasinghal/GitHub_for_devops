provider "aws" {
  region = "us-east-1"  # You can change this to your preferred region
}

resource "aws_instance" "web" {
  ami           = "ami-0fc5d935ebf8bc3bc"  # ✅ Ubuntu 22.04 AMI in us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "MyWebServer"
  }
}

