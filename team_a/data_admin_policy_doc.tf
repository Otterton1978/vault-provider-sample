data "vault_policy_document" "admin_policy" {
    rule {
        path = "sys/namespaces/*"
        capabilities = ["create", "read", "update", "delete", "list", "sudo"]
        description = "Manage namespaces"
    }

    rule {
        path = "sys/policies/acl"
        capabilities = ["list"]
        description = "List existing policies"
    }

    rule {
        path = "sys/policies/acl/*"
        capabilities = ["create", "read", "update", "delete", "list", "sudo"]
        description = "Create and manage ACL policies"
    }

    rule {
        path = "auth/*"
        capabilities = ["create", "read", "update", "delete", "list", "sudo"]
        description = "Manage auth methods broadly across Vault"
    }

    rule {
        path = "sys/auth/*"
        capabilities = ["create", "update", "delete", "sudo"]
        description = "Create, update, and delete auth methods"
    }

    rule {
        path = "sys/auth"
        capabilities = ["read"]
        description = "List auth methods"
    }

    rule {
        path = "kv-team-a/*"
        capabilities = ["create", "read", "update", "delete", "list", "sudo"]
        description = "List, create, update, and delete key/value secrets"
    }

    rule {
        path = "sys/mounts/*"
        capabilities = ["create", "read", "update", "delete", "list", "sudo"]
        description = "Manage secrets engines"
    }

    rule {
        path = "sys/mounts"
        capabilities = ["read"]
        description = "List existing secrets engines"
    }

}