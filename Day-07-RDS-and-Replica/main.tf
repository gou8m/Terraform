resource "aws_db_instance" "db" {
  identifier              = "mydb"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_type            = "gp2"
  username                = "admin"
  password                = "Cloud123"
  db_name                 = "mydatabase"
  backup_retention_period = 1
  skip_final_snapshot     = true
  publicly_accessible     = true
  apply_immediately       = true
}

resource "aws_db_instance" "db-replica" {
  identifier              = "mydb-replica"
  instance_class          = "db.t3.micro"
  replicate_source_db     = aws_db_instance.db.identifier
  skip_final_snapshot     = true
  publicly_accessible     = true
  apply_immediately       = true
  depends_on              = [ aws_db_instance.db ]
} 