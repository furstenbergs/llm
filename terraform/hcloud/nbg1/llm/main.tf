terraform {
  cloud {
    organization = "Furstenberg-Consulting"

    workspaces {
      name = "hcloud-nbg1"
    }
  }
}
