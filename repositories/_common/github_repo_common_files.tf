resource "github_repository_file" "codeowners" {
  repository          = var.repo_name
  branch              = var.repo_branch
  file                = "CODEOWNERS"
  content             = file("${path.module}/files/CODEOWNERS")
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform"
  commit_email        = "terraform-github@simonweald.com"
  overwrite_on_create = true
}

resource "github_repository_file" "workflow_create_release" {
  repository          = var.repo_name
  branch              = var.repo_branch
  file                = ".github/workflows/zz_generated.create_release.yaml"
  content             = file("${path.module}/files/workflows/zz_generated.create_release.yaml")
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform"
  commit_email        = "terraform-github@simonweald.com"
  overwrite_on_create = true
}

resource "github_repository_file" "workflow_create_release_pr" {
  repository          = var.repo_name
  branch              = var.repo_branch
  file                = ".github/workflows/zz_generated.create_release_pr.yaml"
  content             = file("${path.module}/files/workflows/zz_generated.create_release_pr.yaml")
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform"
  commit_email        = "terraform-github@simonweald.com"
  overwrite_on_create = true
}

resource "github_repository_file" "workflow_changelog_validate" {
  repository          = var.repo_name
  branch              = var.repo_branch
  file                = ".github/workflows/changelog-validate.yaml"
  content             = file("${path.module}/files/workflows/changelog-validate.yaml")
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform"
  commit_email        = "terraform-github@simonweald.com"
  overwrite_on_create = true
}
