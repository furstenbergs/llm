terraform {
  cloud {
    organization = "Furstenberg-Consulting"

    workspaces {
      name = "hetzner-nue"
    }
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}