variable "repo_name" {
  type        = string
  description = "The name of the repository"
}

variable "description" {
  type        = string
  description = "Description for the repo"
}

variable "additional_topics" {
  type    = list(string)
  default = []
}

variable "azure_client_id" {} 
variable "azure_subscription_id" {}  
variable "azure_tenant_id" {} 
variable "backend_resource_group" {}
variable "backend_storage_account" {}
variable "backend_container" {}