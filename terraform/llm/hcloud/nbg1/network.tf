resource "hcloud_network" "llm_private_network" {
    name                      = "llm-private-network"
    ip_range                  =  var.llm_private_network
}

resource "hcloud_network_subnet" "llm_private_subnet" {
  network_id   = hcloud_network.llm_private_network.id
  type         = "cloud"
  network_zone = var.network_zone
  ip_range     = var.llm_private_subnet
}

resource "hcloud_firewall" "llm_public_fw" {
  name = "llm-public-firewall"
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "22"
    source_ips = [
      "84.20.50.198/32" # Regus IP
    ]
  }
}
