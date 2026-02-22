# 1. Vend the Identity
module "azure_id" {
  source          = "../modules/entra-spn"
  repo_name     = "my-first-automated-repo"
  azure_subscription_id = var.azure_subscription_id
}

# 2. Provision the Repository
module "test_repo" {
  source      = "../modules/repository"
  repo_name   = module.azure_id.repo_name"
  description = "This repo was created entirely via Terraform and GitHub Apps."
  
  additional_topics = ["terraform", "testing"]

  azure_client_id       = module.azure_id.client_id
  azure_subscription_id = var.azure_subscription_id
  azure_tenant_id       = var.azure_tenant_id
  backend_resource_group = var.backend_resource_group
  backend_storage_account = var.backend_storage_account
  backend_container = var.backend_container
}