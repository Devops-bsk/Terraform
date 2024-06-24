resource "aws_instance" "terraform2" {
  ami = "ami-097c4e1feeea169e5"
  instance_type = "t2.micro"
  availability_zone = "ap-southeast-1b"
  key_name = "Singapore"
  vpc_security_group_ids = [aws_security_group.bsk.id]
  subnet_id = aws_subnet.public3.id
  associate_public_ip_address = true
  user_data = "${file("userdata1.sh")}"
  tags = {
    Name = "terraform2"
  }
}
resource "aws_instance" "terraform3" {
    ami = "ami-097c4e1feeea169e5"
    instance_type = "t2.micro"
    availability_zone = "ap-southeast-1b"
    key_name = "Singapore"
    vpc_security_group_ids = [aws_security_group.bsk.id]
    subnet_id = aws_subnet.public3.id    
    associate_public_ip_address = true
    user_data = "${file("userdata1.sh")}"
    tags = {
        Name = "terraform3"
    }
}