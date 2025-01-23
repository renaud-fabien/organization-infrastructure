locals {
  for_each_repositories = { for repository in var.github_organization.repositories : repository.key => repository }
  for_each_teams        = { for team in var.github_organization.teams : team.key => team }
}
