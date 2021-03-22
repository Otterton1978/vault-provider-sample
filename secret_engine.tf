resource "vault_mount" "kv-v2-root" {
    path = "kv-v2-root"
    type = "kv-v2"
    description = "Example mount created by terraform"
}