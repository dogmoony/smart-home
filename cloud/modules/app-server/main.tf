data "aws_ami" "ubuntu" {
  // Gets the latest ubuntu AMI ID
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical's ID - creators of the Ubuntu AMI
}

resource "aws_key_pair" "deployer" {
  key_name   = "key_name"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "app_server" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro" # Change as needed
  subnet_id                   = var.public_subnets[0]
  security_groups             = var.security_group_ids
  associate_public_ip_address = true
  key_name                    = "key_name"

  tags = {
    Name = "MySmartHomeAssistant"
  }
}
