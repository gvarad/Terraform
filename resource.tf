# resource "aws_instance" "webserverblock" {
#     ami = "ami-0aaa636894689fa47"
#     instance_type = "t3.micro"
#     key_name = "clb"
#     vpc_security_group_ids = ["sg-0906d2d5f23717f64"] 
# }

# resource "aws_instance" "this" {
#   ami                    = "ami-0aaa636894689fa47"
#   instance_type          = "t3.micro"
#   key_name               = "clb"
#   vpc_security_group_ids = ["sg-0906d2d5f23717f64"]
# }