# modules/hcloud_network/outputs.tf

output "network_id" {
  value = hcloud_network.private_network.id
}

output "subnet_id" {
  value = hcloud_network_subnet.private_subnet.id
}

output "firewall_id" {
  value = hcloud_firewall.public_fw.id
}
