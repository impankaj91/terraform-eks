resource "tls_private_key" "my_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "my_key_pair" {
  key_name   = "eks-machine-key"
  public_key = tls_private_key.my_key.public_key_openssh
}
