resource "aws_instance" "ec2_instance" {
  count = 2
  ami           = "ami-12345678" # Replace with your desired AMI ID
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = element(aws_subnet.public_subnet[*].id, count.index)
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > index.html
              nohup python -m SimpleHTTPServer 80 &
              EOF

  # Define EC2 tags and other instance configurations.
}
