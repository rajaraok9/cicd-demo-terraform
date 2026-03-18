resource "aws_db_subnet_group" "db_subnet" {
  name       = "patient-db-subnet"
  subnet_ids = module.vpc.private_subnets
}
resource "aws_db_instance" "healthcare_db" {
  identifier        = "healthcare-db"
  engine            = "mysql"
  instance_class    = "db.t3.micro"
  allocated_storage = 20

  username = "admin"
  password = var.db_password

  db_name = "patientdb"   # 🔥 THIS IS WHAT YOU NEED

  skip_final_snapshot = true
}
resource "aws_security_group" "rds_sg" {
  name   = "rds-sg"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [module.vpc.vpc_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}