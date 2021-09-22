variable "aws_region" {
       description = "The AWS region to create things in."
       default     = "us-west-2"
}

variable "key_name" {
    description = " SSH keys to connect to ec2 instance"
    default     =  "Jenkins"
}

variable "instance_type" {
    description = "instance type for ec2"
    default     =  "t2.micro"
}

variable "security_group" {
    description = "Name of security group"
    default     = "Test_SG"
}

variable "tag_name" {
    description = "Tag Name of for Ec2 instance"
    default     = "terraform_ip"
}
variable "ami_id" {
    description = "ansible host Ec2 instance"
    default     = "ami-03b579c536c31826d"
}
