# Provider
variable "github_app_id" {
  description = "(Required) This is the ID of the GitHub App"
  type        = string
}

variable "github_app_installation_id" {
  description = "(Required) This is the ID of the GitHub App installation"
  type        = string
}

variable "github_app_pem_file" {
  description = "(Required) This is the contents of the GitHub App private key PEM file"
  type        = string
}


variable "github_organization" {
  description = "(Required) GitHub organization"
  type = object({
    name = string                     # The GitHub organization name
    teams = list(object({             #
      name        = string            # (Required) The name of the team
      description = optional(string)  # (Required) A description of the team
      members = list(object({         #
        username = string             # (Required) The user to add to the team
        role     = string             # (Optional) The role of the user within the team. Must be one of member or maintainer
      }))                             #
    }))                               #
    repositories = list(object({      #
      name         = string           # (Required) The name of the repository
      description  = optional(string) # (Optional) A description of the repository
      homepage_url = optional(string) # (Optional) URL of a page describing the project
      visibility   = optional(string) # (Optional) Can be public or private
      teams = optional(list(object({  #
        name       = string           # (Required) The name of the team
        permission = string           # (Optional) The permissions of team members regarding the repository. Must be one of pull, triage, push, maintain, admin or the name of an existing custom repository role within the organisation
      })))
    }))
  })
}
