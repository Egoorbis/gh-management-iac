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
    app_auth {
      id       = var.github_app_client_id
      installation_id = var.github_app_installation_id
      pem_file = file(management-iac.2026-02-09.private-key.pem)
    }
}
