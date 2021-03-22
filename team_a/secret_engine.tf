resource "vault_mount" "kv_team_a" {
    provider = vault.team_a
    path = "kv-team-a"
    type = "kv-v2"
    description = "Example mount created by terraform"
}