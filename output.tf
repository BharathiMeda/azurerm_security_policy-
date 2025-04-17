# Output for Policy Definition
output "policy_definition_id" {
  description = "The ID of the policy definition created."
  value       = azurerm_policy_definition.deny_public_ip.id
}

output "policy_definition_name" {
  description = "The name of the policy definition created."
  value       = azurerm_policy_definition.deny_public_ip.name
}

output "policy_definition_display_name" {
  description = "The display name of the policy definition created."
  value       = azurerm_policy_definition.deny_public_ip.display_name
}

# Output for Policy Assignment
output "policy_assignment_id" {
  description = "The ID of the policy assignment created."
  value       = azurerm_policy_assignment.deny_public_ip_assignment.id
}

output "policy_assignment_name" {
  description = "The name of the policy assignment created."
  value       = azurerm_policy_assignment.deny_public_ip_assignment.name
}

output "policy_assignment_scope" {
  description = "The scope of the policy assignment."
  value       = azurerm_policy_assignment.deny_public_ip_assignment.scope
}

output "policy_assignment_display_name" {
  description = "The display name of the policy assignment created."
  value       = azurerm_policy_assignment.deny_public_ip_assignment.display_name
}