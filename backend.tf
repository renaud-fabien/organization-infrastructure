terraform {
  backend "remote" {
    organization = "renaud-fabien"
    workspaces {
      prefix = "organization-infrastructure-"
    }
  }
}
