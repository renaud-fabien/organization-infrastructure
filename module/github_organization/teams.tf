resource "github_team" "teams" {
  for_each    = local.for_each_teams
  name        = each.value.name
  description = each.value.description
}
