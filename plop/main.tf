provider "tls" {
  version = "~> 2.1"
}
provider "null" {
  version = "~> 2.1"
}

resource "tls_private_key" "key" {
  algorithm = "ECDSA"
}

resource "null_resource" "display" {
  triggers = {
    pubkey  = tls_private_key.key.public_key_pem
    privkey = tls_private_key.key.private_key_pem
  }
}

resource "null_resource" "display2" {
  triggers = {
    pubkey  = tls_private_key.key.public_key_pem
    privkey = tls_private_key.key.private_key_pem
  }
}
