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