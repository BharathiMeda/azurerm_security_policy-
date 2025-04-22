data "azurerm_virtual_network" "Test" {
  name                = "production"
  resource_group_name = "networking"
}
# Create a Policy Definition

resource "azurerm_policy_definition" "deny_public_ip" {
  name         = "Deny-Public-IP"
  policy_type  = "Custom"
  mode         = "All"
  display_name = var.policy_display_name
  description  = var.policy_description

  policy_rule = <<POLICY_RULE
{
  "if": {
    "field": "type",
    "equals": "Microsoft.Network/publicIPAddresses"
  },
  "then": {
    "effect": "deny"
  }
}
POLICY_RULE

  metadata = <<METADATA
{
  "category": "Network"
}
METADATA
}

resource "azurerm_resource_policy_assignment" "deny_public_ip_assignment" {
  name                 = "Deny-Public-IP-Assignment"
  resource_id       =    data.azurerm_virtual_network.Test.id
  #scope                = "/subscriptions/${var.subscription_id}/resourceGroups/${var.resource_group_name}"
  policy_definition_id = azurerm_policy_definition.deny_public_ip.id
  display_name         = var.policy_assignment_display_name
  description          = "This assignment denies the creation of public IPs in the specified resource group."
  #enforcement_mode     = var.policy_enforcement_mode
}
