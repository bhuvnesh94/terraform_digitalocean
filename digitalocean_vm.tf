resource "digitalocean_droplet" "vm_name" {
    image = "ubuntu-18-04-x64"
    name = "vm_name"
    region = "nyc1"
    size = "512mb"
    private_networking = true
    ssh_keys = [
      "${var.ssh_fingerprint}"
    ]
    connection {
        user = "root"
        host= self.ipv4_address
        type = "ssh"
        private_key = file(var.pvt_key)
        timeout = "2m"
    }
    provisioner "remote-exec" {
      inline = [
        "apt update",
        "apt install nginx -y",
        "systemctl restart nginx"
     ]
    }
}
