module "test_repo" {
  source      = "../modules/repository"
  repo_name   = "my-first-automated-repo"
  description = "This repo was created entirely via Terraform and GitHub Apps."
  
  additional_topics = ["terraform", "testing"]
}