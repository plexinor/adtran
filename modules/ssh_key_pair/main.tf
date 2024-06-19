# module for creating SSH key pair for linux VM access
# Create (and display) an SSH key
resource "tls_private_key" "ssh-key-pair" {
  algorithm = var.algorithm
  rsa_bits  = var.rsa_bits
}
