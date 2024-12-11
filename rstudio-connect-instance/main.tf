variable "ami_id" {}
variable "instance_type" {}
variable "tag_name" {}
variable "public_key" {}
variable "subnet_id" {}
variable "sg_for_rstudio_connect" {}
variable "enable_public_ip_address" {}
variable "user_data_install_rstudio_connect" {}

output "ssh_connection_string_for_rstudio_connect" {
  value = format("%s%s", "ssh -i /Users/user/.ssh/id_rsa ubuntu@", aws_instance.rstudio_connect_instance_ip.public_ip)
}

output "rstudio_connect_instance_ip" {
  value = aws_instance.rstudio_connect_instance_ip.id
}

output "rstudio_connect_instance_public_ip" {
  value = aws_instance.rstudio_connect_instance_ip.public_ip
}

resource "aws_instance" "rstudio_connect_instance_ip" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.tag_name
  }
  key_name                    = "id_rsa"
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.sg_for_rstudio_connect
  associate_public_ip_address = var.enable_public_ip_address

  user_data = var.user_data_install_rstudio_connect

  metadata_options {
    http_endpoint = "enabled"  # Enable the IMDSv2 endpoint
    http_tokens   = "required" # Require the use of IMDSv2 tokens
  }
}

resource "aws_key_pair" "rstudio_connect_instance_public_key" {
  key_name   = "id_rsa"
  public_key = var.public_key
}