# github_repository_webhook

data "vault_generic_secret" "atlantis_webhook_url" {
  path = "atlantis/webhook-url"
}

data "vault_generic_secret" "atlantis_webhook_secret" {
  path = "atlantis/webhook-secret"
}
