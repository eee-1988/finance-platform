resource "aws_db_instance" "finance_db" {

  engine            = "mysql"
  instance_class    = "db.t3.micro"
  allocated_storage = 20

  username = "admin"
  password = "FinancePass123!"

  skip_final_snapshot = true

  tags = {
    Name = "finance-db"
  }
}