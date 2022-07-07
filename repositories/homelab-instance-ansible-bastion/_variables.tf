# common vars

variable "repo_owner" {
  type = string
}

# repo vars

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

variable "from_template" {
  type = bool
}

variable "template_repo_owner" {
  type = string
}

variable "template_repo_name" {
  type = string
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
