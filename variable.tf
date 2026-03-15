variable "amiid" {
  default = "ami-0aaa636894689fa47"
}

variable "instancetype" {
  default = "t3.micro"
}

variable "keyname" {
  default = "clb"
}

variable "sg_id" {
  default = "sg-0906d2d5f23717f64"

}

variable "disable_api_termination" {
  default = false

}

# variable "countno" {
#   default = 3
# }