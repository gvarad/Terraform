resource "aws_vpc" "vpc" {
    cidr_block = var.vpccidr
}

resource "aws_subnet" "vpcsubnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnetcidr
}