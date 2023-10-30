# Load Balancer Configuration
resource "aws_lb" "my_alb" {
  name               = "my-demo-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = aws_subnet.public_subnet[*].id

}

# Target Group Configuration (Students should complete this section)

resource "aws_lb_target_group" "demo_tg" {
  # Define the Target Group configuration here.
}


# Target Group Configuration (Students should complete this section)
resource "aws_lb_target_group_attachment" "test" {
  # Define the Target Group Attachment configuration here.
}

# Listener Configuration (Students should complete this section)
resource "aws_lb_listener" "front_end" {
  # Define the Listener configuration here.
}

