
# create a test user authenticating with Vault
resource "vault_generic_endpoint" "u1" {
    provider = vault.team_a
    depends_on = ["vault_auth_backend.userpass"]
    path = "auth/userpass/users/u1"
    ignore_absent_fields = true

      data_json = <<EOT
{
  "policies": ["admin_policy"],
  "password": "password"
}
EOT
}