resource "vault_github_auth_backend" "hashicorp" {
    organization = var.organization
    description = "Github Auth method for IT admin users"
    token_no_default_policy = true
}

resource "vault_github_user" "admin_user" {
    backend = vault_github_auth_backend.hashicorp.id
    user = var.user
    policies = [vault_policy.admin.name]
}