resource "aws_instance" "jenkins-kube" {

  ami = var.ami-id
  instance_type = var.instange-type
  key_name = var.key
  tags = {
    Name = "Jenkins-Kubernetes"
  }
  
}