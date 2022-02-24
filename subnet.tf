
resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = "${aws_vpc.demovpc.id}"
  cidr_block             = "${var.subnet1_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "Subnet 1"
  }
}


resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = "${aws_vpc.demovpc.id}"
  cidr_block             = "${var.subnet2_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"

  tags = {
    Name = "Subnet 2"
  }
}


resource "aws_subnet" "private-subnet-3" {
  vpc_id                  = "${aws_vpc.demovpc.id}"
  cidr_block             = "${var.subnet3_cidr}"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1a"

  tags = {
    Name = "Subnet 3"
  }
}


resource "aws_subnet" "private-subnet-4" {
  vpc_id                  = "${aws_vpc.demovpc.id}"
  cidr_block             = "${var.subnet4_cidr}"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1b"

  tags = {
    Name = "Subnet 4"
  }
}

# Create Database Private Subnet
resource "aws_subnet" "database-subnet-4" {
  vpc_id            = "${aws_vpc.demovpc.id}"
  cidr_block        = "${var.subnet4_cidr}"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Database Subnet 1"
  }
}

# # Create Database Private Subnet
# resource "aws_subnet" "database-subnet-5" {
#   vpc_id            = "${aws_vpc.demovpc.id}"
#   cidr_block        = "${var.subnet5_cidr}"
#   availability_zone = "us-east-1a"

#   tags = {
#     Name = "Database Subnet 1"
#   }
# }