
resource "aws_instance" "app" {
  ami                    = ami-0b0b78dcacbab728f
  instance_type          = var.instance_type

  tags = {
    Name = "drift-demo-app"
  }

  user_data = <<-EOF
              #!/bin/bash
              dnf install -y nginx
              systemctl enable nginx
              systemctl start nginx
              echo "drift-demo-$(hostname)" > /usr/share/nginx/html/index.html
              EOF
}
