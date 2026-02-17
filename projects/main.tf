resource "github_repository" "this" {
  name        = var.repo_name
  description = var.description
  visibility  = "public"
  auto_init   = true

  delete_branch_on_merge = true
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  has_discussions        = false

  topics = concat(["it-professional", "automation"], var.additional_topics)

  allow_rebase_merge = false
  allow_squash_merge = true

  # Security Features
  vulnerability_alerts = true
  security_and_analysis {
    secret_scanning { status = "enabled" }
    secret_scanning_push_protection { status = "enabled" }
  }
}

resource "github_branch_protection" "main" {
  repository_id           = github_repository.this.node_id
  pattern                 = "main"
  enforce_admins          = true
  required_linear_history = true

  required_pull_request_reviews {
    required_approving_review_count = 0
  }
}