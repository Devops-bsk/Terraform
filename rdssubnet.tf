resource "aws_db_subnet_group" "rds-2" {
  name = "rds_1"
  subnet_ids = [aws_subnet.public3.id, aws_subnet.pvt1.id]

  tags = {
    Name = "rds-2"
  }
}