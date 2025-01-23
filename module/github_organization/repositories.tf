resource "github_repository" "main" {
  for_each    = local.for_each_repositories
  name        = each.value.name
  description = each.value.description
  visibility  = each.value.visibility
}
