variable "github_organization" {
  type        = string
  description = "The GitHub organization where the repositories will be created"
  default = "Egoorbis"
}

variable "github_app_client_id" {
  type        = string
  description = "The App ID of the GitHub App (found on the App General page)"
}

variable "github_app_installation_id" {
  type        = string
  description = "The Installation ID of the GitHub App"
}

variable "github_app_pem_content" {
  type      = string
  sensitive = true
}

variable "azure_sp_json" {
  type      = string
  sensitive = true
  default   = "" # Optional for now
}