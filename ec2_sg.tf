# Creating Security Group 
resource "aws_security_group" "EC2" {
  vpc_id = "${aws_vpc.demovpc.id}"

  # Inbound Rules
  # HTTP access from LB
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [aws_subnet.public-subnet-1.cidr_block, aws_subnet.public-subnet-2.cidr_block]
  }

  # SSH access from LB
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_subnet.public-subnet-1.cidr_block, aws_subnet.public-subnet-2.cidr_block]
  }

  # Outbound Rules
  # Internet access to LB
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [aws_subnet.public-subnet-1.cidr_block, aws_subnet.public-subnet-2.cidr_block]
  }

  tags = {
    Name = "EC2 SG"
  }
}
