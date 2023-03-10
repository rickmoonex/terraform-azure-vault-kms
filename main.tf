resource "azurerm_key_vault_key" "vault" {
  key_size     = 2048
  key_type     = "RSA"
  key_vault_id = var.key_vault_id
  name         = "${var.resource_name_prefix}-vault-key"
  tags         = var.common_tags

  key_opts = [
    "unwrapKey",
    "wrapKey",
  ]
}
