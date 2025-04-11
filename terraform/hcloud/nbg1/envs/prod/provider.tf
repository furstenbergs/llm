terraform {
  cloud {

    organization = "Furstenberg-Consulting"

    workspaces {
      name = "prod-nbg1-llm"
    }
  }

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.45"
    }
  }
}