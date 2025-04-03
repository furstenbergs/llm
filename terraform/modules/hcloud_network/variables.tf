# modules/hcloud_network/variables.tf

variable "network_name" {
  description = "The name of the Hetzner network."
  type        = string
}

variable "network_ip_range" {
  description = "The IP range for the Hetzner network."
  type        = string
}

variable "network_zone" {
  description = "The network zone for the subnet."
  type        = string
}

variable "subnet_ip_range" {
  description = "The IP range for the Hetzner subnet."
  type        = string
}

variable "firewall_name" {
  description = "The name of the Hetzner firewall."
  type        = string
}

variable "allowed_ips" {
  description = "The list of allowed IPs for the firewall rule."
  type        = list(string)
}
