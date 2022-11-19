resource "aws_instance" "vm03" {
  ami = "ami-0885b1f6bd170450c"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.websg.id ]
  user_data = <<-EOF
				#!/bin/bash
				echo "*** Installing rundeck"
				sudo apt update -y
				sudo apt install rundeck
				EOF
    tags = {
      Name = "VM03"
    }
  
}
resource "aws_security_group" "websg" {
  name = "web-sg03"
  ingress {
    protocol = "tcp"
    from_port = 0
    to_port = 65535
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}
