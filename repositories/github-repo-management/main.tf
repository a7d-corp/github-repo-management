module "github_repository" {
  source = "github.com/glitchcrab/terraform-github-modules//github_repository"

  repo_name        = var.repo_name
  repo_description = var.repo_description
  repo_visibility  = var.repo_visibility

  allow_merge_commit     = var.allow_merge_commit
  allow_rebase_merge     = var.allow_rebase_merge
  delete_branch_on_merge = var.delete_branch_on_merge
}

module "github_repository_webhook" {
  source = "github.com/glitchcrab/terraform-github-modules//github_repository_webhook"

  repo_name = var.repo_name

  url          = data.vault_generic_secret.atlantis_webhook_url.data["url"]
  content_type = var.webhook_content_type
  secret       = data.vault_generic_secret.atlantis_webhook_secret.data["secret"]
  events       = var.webhook_events
}
