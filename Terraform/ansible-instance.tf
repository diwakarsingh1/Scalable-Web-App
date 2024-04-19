resource "aws_instance" "ansible" {

  ami = var.ami-id
  instance_type = var.instange-type
  key_name = var.key
  tags = {
    Name = "Ansible-Instance"
  }

}

resource "null_resource" "execution" {

    connection {
    type = var.connection
    user = var.user
    private_key = file("I:/project.pem")
    host = aws_instance.ansible.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install vim -y"
      "sudo yum install ansible-core -y"
    ]
  }
  
}


