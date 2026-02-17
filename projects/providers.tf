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
    # Owner is set via GITHUB_OWNER environment variable

    app_auth {
    }
}
