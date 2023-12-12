resource "github_repository_file" "codeowners" {
  depends_on = [module.github_repository]

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
  depends_on = [module.github_repository]

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
  depends_on = [module.github_repository]

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
  depends_on = [module.github_repository]

  repository          = var.repo_name
  branch              = var.repo_branch
  file                = ".github/workflows/changelog-validate.yaml"
  content             = file("${path.module}/files/workflows/changelog-validate.yaml")
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform"
  commit_email        = "terraform-github@simonweald.com"
  overwrite_on_create = true
}

resource "github_repository_file" "workflow_terraform_docs_validate" {
  depends_on = [module.github_repository]

  count = var.is_terraform_module ? 1 : 0

  repository          = var.repo_name
  branch              = var.repo_branch
  file                = ".github/workflows/terraform-docs-validate.yaml"
  content             = file("${path.module}/files/workflows/terraform-docs-validate.yaml")
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform"
  commit_email        = "terraform-github@simonweald.com"
  overwrite_on_create = true
}

resource "github_repository_file" "config_terraform_docs" {
  depends_on = [module.github_repository]

  count = var.is_terraform_module ? 1 : 0

  repository          = var.repo_name
  branch              = var.repo_branch
  file                = ".terraform-docs.yml"
  content             = file("${path.module}/files/tooling/terraform-docs.yml")
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform"
  commit_email        = "terraform-github@simonweald.com"
  overwrite_on_create = true
}
