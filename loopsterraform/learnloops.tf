    resource "aws-instance" "frontend" {
        for_each = var.instance_type
        ami = var.ami
        instance_type = each.value ["instance_types"]
        vpc_security_group_ids = var.vpc_security_group_ids
        tags = {
            Name = each.key
        }
        }
variable "ami" {
    default = ""
}
variable "instance_type" {
    default = "t3.micro"
}
variable "vpc_security_group_ids" {
    default = ""

}
variable "instance_types" {
    default = {
    frontend = {
        instance_type = " t3.micro"
    }
    backend = {
        instance_type = " t3.micro"
    }
    mysql = {
        instance_type = "t3.micro"
    }
}
}
