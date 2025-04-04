# modules/hcloud_network/main.tf

resource "hcloud_network" "private_network" {
    name        = var.network_name
    ip_range    = var.network_ip_range
}
