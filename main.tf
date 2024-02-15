provider "aws" {
  region = "ap-south-1"
}

# Launch an EC2 instance
resource "aws_instance" "my_instance" {
  ami             = "ami-0d3f444bc76de0a79"  # Replace with the desired AMI ID
  instance_type   = "t2.medium"  # Change this to the desired instance type
  
  tags = {
    Name = "MyInstance"
  }
}
