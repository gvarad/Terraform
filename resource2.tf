# resource "aws_instance" "vm" {
#   ami                    = "ami-0aaa636894689fa47"
#   instance_type          = "t3.micro"
#   key_name               = "clb"
#   user_data              = <<-EOF
#                 #!/bin/bash
#                 sudo -i
#                 yum update -i
#                 yum install httpd -y
#                 systemctl start httpd
#                 systemctl enable httpd
#                 echo "Hello Terraform" > /var/www/html/index.html
#                 EOF
#   vpc_security_group_ids = [aws_security_group.web_sg.id]

# }

# resource "aws_security_group" "web_sg" {
#   name        = "webserver-sg-b64"
#   vpc_id      = "vpc-0f6ede6642c378603"
#   description = "Allow HTTP traffic"

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1" // -1 -> All traffic
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# output "public_ip" {
#   value = aws_instance.vm.public_ip
# }