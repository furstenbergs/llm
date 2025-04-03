# modules/hcloud_network/main.tf

resource "hcloud_network" "private_network" {
    name        = var.network_name
    ip_range    = var.network_ip_range
}

resource "hcloud_network_subnet" "private_subnet" {
    network_id   = hcloud_network.private_network.id
    type         = "cloud"
    network_zone = var.network_zone
    ip_range     = var.subnet_ip_range
}

resource "hcloud_firewall" "public_fw" {
    name = var.firewall_name

    rule {
        direction  = "in"
        protocol   = "tcp"
        port       = "22"
        source_ips = var.allowed_ips
    }
}
