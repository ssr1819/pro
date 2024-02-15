provider "aws" {
  region = "ap-south-1"
}

# Launch an EC2 instance
resource "aws_instance" "my_instance" {
  ami             = "ami-0d3f444bc76de0a79"  # Replace with the desired AMI ID
  instance_type   = "t2.medium"  # Change this to the desired instance type
  subnet_id       = aws_subnet.my_subnet.id
 

  vpc_security_group_ids = [aws_security_group.instance_sg.id]



 user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              service httpd start
              chkconfig httpd on
              firewall-cmd --zone=public --add-port=80/tcp --permanent
              firewall-cmd --reload
              EOF

  tags = {
    Name = "MyInstance"
  }
}
