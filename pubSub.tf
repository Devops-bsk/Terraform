resource "aws_subnet" "public3" {
    vpc_id = aws_vpc.myvpc1.id
    map_public_ip_on_launch = true
    availability_zone = "ap-southeast-1b"
    cidr_block = "10.0.5.0/24"
    tags = {
        Name = "public3"
    }
 
}
resource "aws_subnet" "public2" {
    vpc_id = aws_vpc.myvpc1.id
    map_public_ip_on_launch = true
    availability_zone = "ap-southeast-1b"
    cidr_block = "10.0.6.0/24"
    tags = {
        Name = "public2"
    }
 
}