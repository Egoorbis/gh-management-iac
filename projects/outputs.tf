output "repository_urls" {
  value       = github_repository.this.html_url
  description = "The URL of the newly created repository"
}