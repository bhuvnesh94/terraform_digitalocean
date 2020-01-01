output "Name" {
  value = "${digitalocean_droplet.test.name}"
}
output "publicIP" {
  value = "${digitalocean_droplet.test.ipv4_address}"
}
