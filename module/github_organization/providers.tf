# You must add a required_providers block to every module that will create resources with this provider. If you do not explicitly require integrations/github in a submodule, your terraform run may break in hard-to-troubleshoot ways
# https://github.com/integrations/terraform-provider-github/issues/876#issuecomment-1303790559
terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}