resource "vault_policy" "admin" {
    provider = vault.team_a
    name = "admin_policy"
    policy = "${data.vault_policy_document.admin_policy.hcl}"
}