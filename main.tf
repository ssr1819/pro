provider "aws" {
  region = "ap-south-1"
  Access_key = "AKIA4WD377HHR6ETJWPB"
  Secret_key = "WkNc0O49FU8aWQpRU/SUkszzpk7gqgs2bSkb5swE"
}
# Launch an EC2 instance
resource "aws_instance" "my_instance" {
  ami             = "ami-0449c34f967dbf18a"  # Replace with the desired AMI ID
  instance_type   = "t2.medium"  # Change this to the desired instance type
  count = 1

  tags = {
    Name = "MyInstance"
  }
}
