resource "aws_security_group" "alb_sg" {
  name_prefix = "alb-sg-"

  # Define inbound and outbound rules for ALB security group.
}

resource "aws_security_group" "ec2_sg" {
  name_prefix = "ec2-sg-"

  # Define inbound and outbound rules for EC2 instances security group.
}
