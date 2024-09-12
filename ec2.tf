resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your preferred AMI ID
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  tags = {
    Name = "web-server-ec2"
  }
  security_groups = [aws_security_group.web_sg.name]
}
