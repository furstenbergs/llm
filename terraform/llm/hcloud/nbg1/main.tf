terraform {
  cloud {
    organization = "Furstenberg-Consulting"

    workspaces {
      name = "llm-hcloud-nbg1"
    }
  }
}
