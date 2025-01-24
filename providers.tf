provider "github" {
  owner = var.github_organization.name
  app_auth {}
}
