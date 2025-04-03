terraform {
    cloud {
        organization = "Furstenberg-Consulting"
        workspaces {
            name = "llm-hcloud-nbg1-production"
        }
    }
}

module "hcloud" {
  source = "../../modules/hcloud"
}

module "hcloud_network" {
  source = "../../modules/hcloud_network"

  network_name       = "llm-private-network"
  network_ip_range   = var.llm_private_network
  network_zone       = var.network_zone
  subnet_ip_range    = var.llm_private_subnet
  firewall_name      = "llm-public-firewall"
  allowed_ips        = ["84.20.50.198/32"]  # Regus IP
}
