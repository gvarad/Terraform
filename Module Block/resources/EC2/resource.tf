resource "aws_instance" "webserver" {
  ami                     = var.amiid
  instance_type           = var.instancetype
  key_name                = var.keyname
  vpc_security_group_ids  = [aws_security_group.web-sg.id]
  disable_api_termination = var.disable_api_termination
  subnet_id = var.subnet_id
  # count                   = var.countno

  tags = {
    Name       = "Webserver"
    department = "DevOps"

  }
}

resource "aws_security_group" "web-sg" {
  name        = "Webserver-sg"
  description = "Allow HTTP traffic"
  vpc_id = var.vpc_id

  ingress {
    to_port     = 80
    from_port   = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    to_port     = 0
    from_port   = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    to_port     = 0
    from_port   = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



# data "aws_security_group" "samplesg" {
#   name = "sample"
# }