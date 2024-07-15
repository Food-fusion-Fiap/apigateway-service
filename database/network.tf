# Criação de um grupo de sub-redes para o banco de dados
resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = [var.subnetA, var.subnetB, var.subnetC]

  tags = {
    Name = "Main DB Subnet Group"
  }
}

# Definição da política de segurança para a sub-rede pública
resource "aws_security_group" "rds_public_sg" {
  name        = "rds_public_sg"
  description = "Allow postgres inbound traffic"
  vpc_id      = var.vpc

  # Permitir tráfego de entrada apenas nas portas necessárias
  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}