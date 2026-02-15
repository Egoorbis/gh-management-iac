output "repository_urls" {
  value = module.test_repo.repo_html_url
  description = "The URL of the newly created repository"
}