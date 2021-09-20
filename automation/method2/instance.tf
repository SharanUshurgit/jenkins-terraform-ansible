resource "aws_instance" "r100c96" {
  ami               = "ami-0c2d06d50ce30b442"
  instance_type     = "t2.micro"
  availability_zone = "us-west-2"
  key_name          = "Jenkins"
  user_data         = file("installcommand.sh")
  tags = {
    Name = "Terraform-diff-linux"
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.r100c96.public_dns} > inventory"
  }

  provisioner "local-exec" {
    command = "sleep 150"
  }

  provisioner "local-exec" {
    command = "ansible all -m shell -a 'yum -y install httpd; systemctl restart httpd'"
  }

}

output "ip" {
  value = aws_instance.r100c96.public_ip
}

output "publicName" {
  value = aws_instance.r100c96.public_dns
}
