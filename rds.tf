resource "aws_db_instance" "default" {
    db_subnet_group_name = aws_db_subnet_group.rds-2.id
    engine = "mysql"
    db_name = "rds"
    allocated_storage = 8
    engine_version = "8.0.31"
    instance_class = "db.t2.micro"
    multi_az = true
    username = "root"
    password = "password"
    parameter_group_name = "default.mysql5.7"
    vpc_security_group_ids = [aws_security_group.bsk.id]
    skip_final_snapshot = true
}