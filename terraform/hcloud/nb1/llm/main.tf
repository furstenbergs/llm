terraform {
  cloud {
    organization = "Furstenberg-Consulting"

    workspaces {
      name = "hcloud-nb1"
    }
  }
}
