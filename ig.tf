resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.myvpc1.id

  tags = {
    Name = "gw"
  }
}