variable "github_organization" {
  type        = string
  description = "The GitHub organization where the repositories will be created"
  default     = "Egoorbis"
}

variable "azure_sp_json" {
  type      = string
  sensitive = true
  default   = "" # Optional for now
}

variable "repo_name" {
  type        = string
  description = "The name of the repository"
  default     = "testreport"
}

variable "description" {
  type        = string
  description = "Description for the repo"
  default     = "This repo was created entirely via Terraform and GitHub Apps."
}

variable "additional_topics" {
  type    = list(string)
  default = []
}

variable "github_app_id" {
  type        = string
  description = "GitHub App ID for authentication"
  validation {
    condition     = can(regex("^[0-9]+$", var.github_app_id))
    error_message = "The github_app_id must be a numeric string."
  }
}

variable "github_app_installation_id" {
  type        = string
  description = "GitHub App Installation ID"
  validation {
    condition     = can(regex("^[0-9]+$", var.github_app_installation_id))
    error_message = "The github_app_installation_id must be a numeric string."
  }
}

variable "github_app_pem_file" {
  type        = string
  description = "GitHub App Private Key (PEM content)"
  sensitive   = true
  validation {
    condition     = can(regex("BEGIN.*PRIVATE KEY", var.github_app_pem_file))
    error_message = "The github_app_pem_file must contain a valid PEM-formatted private key."
  }
}