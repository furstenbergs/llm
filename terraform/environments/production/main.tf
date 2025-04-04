terraform {
    cloud {
        organization = "Furstenberg-Consulting"
        workspaces {
            name = "llm-hcloud-nbg1-production"
        }
    }
}

module "hcloud_network" {
  source = "../../modules/hcloud_network"

  network_name       = var.network_name
  network_ip_range   = var.network_ip_range
}
