resource "vault_github_auth_backend" "hashicorp" {
    provider = vault.team_a
    organization = var.organization
    description = "Github Auth method for IT admin users"
    token_no_default_policy = true
}

resource "vault_github_user" "admin_user" {
    provider = vault.team_a
    backend = vault_github_auth_backend.hashicorp.id
    user = var.user
    policies = [vault_policy.admin.name]
}

resource "vault_auth_backend" "userpass" {
    provider = vault.team_a
    type = "userpass"
}