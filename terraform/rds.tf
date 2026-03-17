resource "aws_db_subnet_group" "db_subnet" {
  name       = "patient-db-subnet"
  subnet_ids = module.vpc.private_subnets
}

resource "aws_db_instance" "patient_db" {
  identifier = "patientdb"

  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.t3.micro"


  allocated_storage = 20

  username = var.db_username
  password = var.db_password

  db_subnet_group_name = aws_db_subnet_group.db_subnet.name

  skip_final_snapshot = true
}