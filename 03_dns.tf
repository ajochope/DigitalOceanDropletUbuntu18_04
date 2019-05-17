# Creo el CNAME de www para ajochope.tk
resource "digitalocean_record" "CNAME-www" {
  domain = "ajochope.tk"
  type   = "CNAME"
  name   = "www"
  value  = "@"
}