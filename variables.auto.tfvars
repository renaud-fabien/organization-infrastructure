github_organization = {
  name = "renaud-fabien"
  teams = [
    { name = "infrastructure", members = [{ username = "fabien-renaud", role = "owner" }] }
  ]
  repositories = [
    { name = "iam-infrastructure", teams = [{ name = "infrastructure", permission = "owner" }], description = "This repository contains the infrastructure-as-code (IaC) to deploy the IAM infrastructure on AWS" },
    { name = "organization-infrastructure", teams = [{ name = "infrastructure", permission = "owner" }], description = "This repository contains the infrastructure-as-code (IaC) to deploy the organization infrastructure on AWS and GitHub" },
    { name = "wiki", visibility = "public" }
  ]
}
