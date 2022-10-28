
resource "aws_instance" "web" {
  ami                         = "ami-062df10d14676e201"
  instance_type               = "t2.micro"
  key_name                    =  "admin1"
  count                       =   "2"
  subnet_id                   = aws_subnet.subnet1.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.sg1.id]
  tags = {
    Name = "test"
  }

  user_data =          <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install apache2 -y
    sudo systemctl enable apache2
    sudo systemctl start apache2
    EOF
}