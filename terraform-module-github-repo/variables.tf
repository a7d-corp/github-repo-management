variable "repo_name" {
  type  = string
  value = ""
}

variable "repo_description" {
  type  = string
  value = ""
}

variable "repo_visibility" {
  type  = string
  value = "public"
}

variable "allow_merge_commit" {
  type  = bool
  value = false
}

variable "allow_squash_merge" {
  type  = bool
  value = true
}

variable "allow_rebase_merge" {
  type  = bool
  value = false
}

variable "delete_branch_on_merge" {
  type  = bool
  value = true
}
