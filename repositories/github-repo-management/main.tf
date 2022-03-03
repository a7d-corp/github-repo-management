module "github_repository" {
  source = "github.com/glitchcrab/terraform-github-modules//github_repository"

  repo_name        = var.repo_name
  repo_description = var.repo_description
  repo_visibility  = var.repo_visibility

  allow_merge_commit     = var.allow_merge_commit
  allow_rebase_merge     = var.allow_rebase_merge
  delete_branch_on_merge = var.delete_branch_on_merge
}
