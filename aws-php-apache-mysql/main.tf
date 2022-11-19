provider "aws" {
  region = "us-east-1"
  access_key = "AKIA2EGQM65IRH57W2W4"
  secret_key = "ZlKpvk6cwM5mojvonFQO8AxuVlPUIaVyt7eMM8l3XXXXsayt"
}
resource "aws_instance" "vm01" {
  ami = "ami-0885b1f6bd170450c"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.websg.id ]
  user_data = <<-EOF
                #!/bin/bash
                echo "VM01" > index.html
                nohup busybox httpd -f -p 8080 &
				echo "*** Installing mysql"
				sudo apt install mysql-server
				echo "*** Installing apache2"
				sudo apt install apache2 php libapache2-mod-php
				echo "*** Completed task"
                EOF
    tags = {
      Name = "VM01"
    }
  
  resource "aws_security_group" "websg" {
  name = "web-sg01"
  ingress {
    protocol = "tcp"
    from_port = 0
    to_port = 65535
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}
