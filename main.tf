module "github_organization" {
  source              = "./module/github_organization"
  github_organization = local.default_github_organization
}
