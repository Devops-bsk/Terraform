resource "aws_security_group" "dbsecurity" {
    description = "security group for db "
    vpc_id = aws_vpc.myvpc1.id
    name = "dbsecurity"
    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
    egress {
        from_port = 32768
        to_port = 65535
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    tags = {
      Name = "bsk2"
    }
  
}