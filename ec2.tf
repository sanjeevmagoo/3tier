# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
  #ami                        = "ami-0b0af3577fe5e3532"
  ami                         = "ami-02c2fbfdd8d306059"
  instance_type               = "t2.micro"
  key_name                    = "new-186"
  vpc_security_group_ids      = ["${aws_security_group.ALB.id}"]
  subnet_id                   = "${aws_subnet.private-subnet-3.id}"
  associate_public_ip_address = true
  #user_data                   = "${file("data.sh")}"
  
  tags = {
    Name = "My Private Instance"
  }
}

# # Creating 2nd EC2 instance in Public Subnet
# resource "aws_instance" "demoinstance1" {
#   ami                         = "ami-087c17d1fe0178315"
#   instance_type               = "t2.micro"
#   count                       = 1
#   key_name                    = "tests"
#   vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
#   subnet_id                   = "${aws_subnet.demoinstance.id}"
#   associate_public_ip_address = true
#   user_data                   = "${file("data.sh")}"

#   tags = {
#     Name = "My Public Instance 2"
#   }
# }
