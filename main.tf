provider "vault" {
    address = "https://loving-loon.hc.yk-vault.ml:8200/"
    token = "s.Rz6kra6zwOofnMvnASOoklAV"
}

resource "vault_mount" "kv-v2-root" {
    path = "kv-v2-root"
    type = "kv-v2"
    description = "Example mount created by terraform"
}