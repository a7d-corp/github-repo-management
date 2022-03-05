variable "repo_name" {
  type = string
}

variable "repo_description" {
  type = string
}

variable "repo_visibility" {
  type = string
}

variable "has_issues" {
  type = bool
}

variable "topics" {
  type = list(any)
}

variable "allow_merge_commit" {
  type = bool
}

variable "allow_rebase_merge" {
  type = bool
}

variable "delete_branch_on_merge" {
  type = bool
}

# github_repository_collaborator

variable "collaborator_name" {
  type = string
}
