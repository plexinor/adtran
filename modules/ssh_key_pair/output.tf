output "id" {
  value       = tls_private_key.ssh-key-pair.id
  description = "(String) Unique identifier for this resource: hexadecimal representation of the SHA1 checksum of the resource"
}
output "private_key_openssh" {
  value       = tls_private_key.ssh-key-pair.private_key_openssh
  sensitive   = true
  description = "(String, Sensitive) Private key data in OpenSSH PEM (RFC 4716) format"
}
output "private_key_pem" {
  value       = tls_private_key.ssh-key-pair.private_key_pem
  sensitive   = true
  description = "(String, Sensitive) Private key data in PEM (RFC 1421) format"
}
output "private_key_pem_pkcs8" {
  value       = tls_private_key.ssh-key-pair.private_key_pem_pkcs8
  sensitive   = true
  description = "(String, Sensitive) Private key data in PKCS#8 PEM (RFC 5208) format"
}
output "public_key_fingerprint_md5" {
  value       = tls_private_key.ssh-key-pair.public_key_fingerprint_md5
  description = "(String) The fingerprint of the public key data in OpenSSH MD5 hash format, e.g. aa:bb:cc:.... Only available if the selected private key format is compatible, similarly to public_key_openssh and the ECDSA P224 limitations"
}
output "public_key_fingerprint_sha256" {
  value       = tls_private_key.ssh-key-pair.public_key_fingerprint_sha256
  description = " (String) The fingerprint of the public key data in OpenSSH SHA256 hash format, e.g. SHA256:.... Only available if the selected private key format is compatible, similarly to public_key_openssh and the ECDSA P224 limitations"
}
output "public_key_openssh" {
  value       = tls_private_key.ssh-key-pair.public_key_openssh
  description = "(String) The public key data in 'Authorized Keys' format. This is not populated for ECDSA with curve P224, as it is not supported. NOTE: the underlying libraries that generate this value append a \n at the end of the PEM. In case this disrupts your use case, we recommend using trimspace()"
}
output "public_key_pem" {
  value       = tls_private_key.ssh-key-pair.public_key_pem
  description = "(String) Public key data in PEM (RFC 1421) format. NOTE: the underlying libraries that generate this value append a \n at the end of the PEM. In case this disrupts your use case, we recommend using trimspace()"
}
