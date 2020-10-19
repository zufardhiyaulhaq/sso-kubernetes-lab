output "keycloak_public_ip" {
  value = digitalocean_droplet.keycloak.ipv4_address
}

output "kubernetes_public_ip" {
  value = digitalocean_droplet.kubernetes.ipv4_address
}
