locals {
  default_github_organization = {
    name = var.github_organization.name
    teams = [for team in var.github_organization.teams : {
      key         = "${var.github_organization.name}/${team.name}"
      name        = team.name
      description = team.description
      members = [for member in team.members : {
        username = member.username
        role     = coalesce(member.role, "member")
      }]
    }]
    repositories = [for repository in var.github_organization.repositories : merge(repository, {
      key              = "${var.github_organization.name}/${repository.name}"
      name_pascal_case = repository.name
      homepage_url     = coalesce(repository.homepage_url, "https://github.com/${var.github_organization.name}/${repository.name}")
      })
    ]
  }
}
