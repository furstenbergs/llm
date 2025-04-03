variable "llm_private_network" {
    default = "10.10.0.0/23"
}

variable "llm_private_subnet" {
  default = "10.10.1.0/24"
}

variable "network_zone" {
  default = "eu-central"
}

variable "domain" {
  default = "furstenbergs.com"
}

variable "az1" {
  default = "nbg1"
}

variable "os_image" {
  default = "ubuntu-24.04"
}

variable "ll_server_type" {
  default = "cx22"
}