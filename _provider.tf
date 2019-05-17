variable "digitalocean_token" {}
variable "ssh_fingerprint" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  # enviromment var local computer
  token = "${var.digitalocean_token}"
}
