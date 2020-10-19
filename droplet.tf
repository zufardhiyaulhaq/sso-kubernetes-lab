resource "digitalocean_ssh_key" "public_key" {
  name       = "sso-kubernetes-public-key"
  public_key = var.do_ssh_key
}

resource "digitalocean_droplet" "keycloak" {
  image  = var.keycloak_vm_image
  name   = var.keycloak_vm_name
  region = var.keycloak_vm_region
  size   = var.keycloak_vm_size
  ssh_keys = [
    [digitalocean_ssh_key.public_key.fingerprint]
  ]
}

resource "digitalocean_droplet" "kubernetes" {
  image  = var.kubernetes_vm_image
  name   = var.kubernetes_vm_name
  region = var.kubernetes_vm_region
  size   = var.kubernetes_vm_size
  ssh_keys = [
    [digitalocean_ssh_key.public_key.fingerprint]
  ]
}
