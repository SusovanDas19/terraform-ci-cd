resource "aws_instance" "my_ec2" {
  ami           = "ami-0b0b78dcacbab728f"  # Amazon Linux (example)
  instance_type = "t3.micro"

  tags = {
    Name = "simple-ec2"
  }
}
