output "azure_client_id" {
  value = azuread_application.this.client_id
}

output "repo_name" {
  value = var.repo_name
}