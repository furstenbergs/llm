resource "hcloud_ssh_key" "stefan" {
  name       = "stefan_key"
  public_key = file("./files/ssh/stefan.pub")
}

resource "hcloud_server" "portals_firewall_az1" {
    name                  = "${var.az1}-llm.${var.domain}"
    image                 = var.os_iamge
    server_type           = var.ll_server_type
    location              = var.az1
    ssh_keys              = [hcloud_ssh_key.stefan.id]
    firewall_ids          = [hcloud_firewall.llm_public_fw.id]
    network {
      network_id          = hcloud_network.llm_private_network.id
    }
    public_net {
      ipv4_enabled        = true
      ipv6_enabled        = true
    }
    labels = {
      type                = "llm"
      env                 = "prod"
    }
    user_data             = file("./files/userdata/config.yml")
    depends_on = [
      hcloud_network_subnet.llm_private_subnet
    ]
}
