resource "vault_policy" "admin" {
    name = "admin_policy"
    policy = "${data.vault_policy_document.admin_policy.hcl}"
}