resource "aws_instance" "web" {
  ami           = "ami-02457590d33d576c3"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.sub1.id
  key_name = "awskey"
  security_groups = [aws_security_group.sg1.id]
  tags = {
    Name = "WebServer1"
  }
user_data = << file("apache.sh")
}