provider "aws" {
  region = var.aws_region
}



resource "aws_instance" "myFirstInstance" {
  ami           = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= [var.security_group]
  tags= {
    Name = var.tag_name
  }
  
  provisioner "local-exec" {
    command = "echo ${aws_instance.myFirstInstance.public_dns} > inventory"
  }

  provisioner "local-exec" {
    command = "sleep 350"
  }

  provisioner "local-exec" {
    command = "ansible all -m shell -a 'yum -y install httpd; systemctl restart httpd'"
  }
}


output "ip" {
  value = aws_instance.myFirstInstance.public_ip
}

output "publicName" {
  value = aws_instance.myFirstInstance.public_dns
}
