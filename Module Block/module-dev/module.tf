module "EC2" {
    source = "/mnt/f/Terraform/Module Block/resources/EC2" 
    instancetype = "t3.micro"
    amiid = "ami-0aaa636894689fa47"
    keyname = "clb"
    disable_api_termination = false
    vpc_id = module.VPC.vpcid
    subnet_id = module.VPC.subnetid
}

module "VPC" {
    source = "/mnt/f/Terraform/Module Block/resources/VPC"
    vpccidr = "172.16.0.0/16"
    subnetcidr = "172.16.1.0/24"
}