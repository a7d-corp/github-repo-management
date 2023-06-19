variable "is_terraform_module" {
  default = false
  description "Is this repo a Terraform module?"
  type = bool
}

variable "repo_branch" {
  default     = "main"
  type        = string
  description = "Default branch name"
}
