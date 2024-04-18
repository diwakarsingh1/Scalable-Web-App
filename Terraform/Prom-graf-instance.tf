resource "aws_instance" "prom-graf" {

  ami = var.ami-id
  instance_type = var.instange-type
  key_name = var.key
  tags = {
    Name = "Prometheus-Grafana-Server"
  }

}