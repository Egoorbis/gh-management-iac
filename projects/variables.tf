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