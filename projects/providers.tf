terraform {
    backend "azurerm" {
      use_oidc              = true  
      use_azuread_auth      = true
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
    owner = var.github_organization
    # Uses GITHUB_TOKEN from environment variable
}
