resource "aws_subnet" "public_subnet" {
  count           = 2
  vpc_id          = aws_vpc.my_vpc.id
  cidr_block      = "10.0.${4 + count.index}.0/24"
  availability_zone = "us-east-1a" # Change to desired availability zones
  map_public_ip_on_launch = true
}

# Create private subnets similarly.
