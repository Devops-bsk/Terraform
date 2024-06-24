resource "aws_subnet" "pvt1" {
    vpc_id = aws_vpc.myvpc1.id
    map_public_ip_on_launch = true
    availability_zone = "ap-southeast-1c"
    cidr_block = "10.0.8.0/24"
    tags = {
        Name = "pvt1"
    }
 
}
resource "aws_subnet" "pvt2" {
    vpc_id = aws_vpc.myvpc1.id
    map_public_ip_on_launch = true
    availability_zone = "ap-southeast-1c"
    cidr_block = "10.0.9.0/24"
    tags = {
        Name = "pvt2"
    }
 
}