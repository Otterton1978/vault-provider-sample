resource "vault_audit" "audit" {
    type = "file"

    options = {
        file_path = "/var/log/vault/vault_audit.log"
    }
}