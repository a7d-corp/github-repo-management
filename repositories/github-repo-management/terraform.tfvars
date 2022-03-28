repo_owner = "a7d-corp"

# github_repository

repo_name        = "github-repo-management"
repo_description = "Management of Github repo configuration and settings"
repo_visibility  = "public"

allow_merge_commit     = false
allow_rebase_merge     = false
delete_branch_on_merge = true

# github_repository_webhook

webhook_content_type = "json"
webhook_events       = ["issue_comment", "pull_request", "pull_request_review", "push"]
