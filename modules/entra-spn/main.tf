# 1. Create the Entra ID Application
resource "azuread_application" "this" {
  display_name = "spn-${var.repo_name}"
}

# 2. Create the Service Principal
resource "azuread_service_principal" "this" {
  client_id = azuread_application.this.client_id
}

# 3. Create the Federated Credential (OIDC Trust)
resource "azuread_application_federated_identity_credential" "this" {
  application_id = azuread_application.this.id
  display_name   = "github-actions-oidc"
  description    = "OIDC trust for GitHub Actions on main branch"
  audiences      = ["api://AzureADTokenExchange"]
  issuer         = "https://token.actions.githubusercontent.com"
  subject        = "repo:${var.repo_name}:ref:refs/heads/main"
}

# 4. Scope-based Role Assignment (Contributor on Subscription)
resource "azurerm_role_assignment" "this" {
  scope                = "/subscriptions/${var.azure_subscription_id}"
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.this.object_id
}