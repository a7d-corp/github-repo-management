resource "github_issue_label" "issue_label" {
  for_each = var.issue_labels

  repository = var.repo_name
  name       = each.key
  color      = each.value
}
