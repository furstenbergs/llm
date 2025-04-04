# modules/hcloud_network/variables.tf

variable "llm_private_network" {
  description = "The IP range for the private network."
  type        = string
}

variable "llm_private_subnet" {
  description = "The IP range for the private subnet."
  type        = string
}

variable "network_zone" {
  description = "The network zone for the subnet."
  type        = string
}