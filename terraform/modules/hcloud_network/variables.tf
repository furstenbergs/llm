# modules/hcloud_network/variables.tf

variable "network_name" {
  description = "The name of the Hetzner network."
  type        = string
}

variable "network_ip_range" {
  description = "The IP range for the Hetzner network."
  type        = string
}