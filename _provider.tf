variable "digitalocean_token" {}
variable "ssh_fingerprint" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  # enviromment var local computer
  token = "${var.digitalocean_token}"
}

/*

 terraform plan \
  -var "digitalocean_token=${TF_VAR_digitalocean_token}" \
  -var "pub_key=$~/DigitalOcean_id_rsa.pub" \
  -var "pvt_key=$~/DigitalOceanPrivate" \
  -var "ssh_fingerprint=$TF_VAR_ssh_fingerprint"

terraform plan \
  -var "pub_key=$~/DigitalOcean_id_rsa.pub" \
  -var "pvt_key=$~/DigitalOceanPrivate" \



*/