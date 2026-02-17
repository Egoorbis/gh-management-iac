variable "github_organization" {
  type        = string
  description = "The GitHub organization where the repositories will be created"
  default = "Egoorbis"
}

variable "azure_sp_json" {
  type      = string
  sensitive = true
  default   = "" # Optional for now
}

variable "repo_name" {
  type        = string
  description = "The name of the repository"
  default = "testreport"
}

variable "description" {
  type        = string
  description = "Description for the repo"
  default = "This repo was created entirely via Terraform and GitHub Apps."
}

variable "additional_topics" {
  type    = list(string)
  default = []
}