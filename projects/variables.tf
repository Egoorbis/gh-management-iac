variable "github_app_client_id" {
  type        = string
  description = "The Client ID of the GitHub App (found on the App General page)"
}

variable "github_app_installation_id" {
  type        = string
  description = "The Installation ID of the GitHub App"
}

variable "azure_sp_json" {
  type      = string
  sensitive = true
  default   = "" # Optional for now
}