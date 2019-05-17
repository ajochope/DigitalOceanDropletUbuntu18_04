#
# Creamos el droplet
resource "digitalocean_droplet" "web" {
  image     = "ubuntu-18-04-x64"
  name      = "web-leguasoft-tk"
  region    = "ams3"
  size      = "s-1vcpu-1gb"
  user_data = "${file("userdata.yaml")}"
# enviromment var local computer
  ssh_keys  = ["${var.ssh_fingerprint}"]


#  when new ssh key is created
#  ssh_keys = ["${digitalocean_ssh_key.ajochope.fingerprint}"]
}