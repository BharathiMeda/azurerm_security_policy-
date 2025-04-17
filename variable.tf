# Variable for Azure Subscription ID
variable "subscription_id" {
  description = "The subscription ID where the policy will be assigned."
  type        = string
}

# Variable for Resource Group Name
variable "resource_group_name" {
  description = "The name of the resource group where the policy will be applied."
  type        = string
}

# Variable for Policy Display Name (Optional)
variable "policy_display_name" {
  description = "The display name for the policy definition."
  type        = string
  default     = "Deny Public IP"
}

# Variable for Policy Description (Optional)
variable "policy_description" {
  description = "The description for the policy definition."
  type        = string
  default     = "This policy denies the creation of public IPs."
}

# Variable for Policy Assignment Display Name (Optional)
variable "policy_assignment_display_name" {
  description = "The display name for the policy assignment."
  type        = string
  default     = "Deny Public IP Assignment"
}

# Variable for Policy Assignment Enforcement Mode (Optional)
variable "policy_enforcement_mode" {
  description = "The enforcement mode for the policy assignment (Default or DoNotEnforce)."
  type        = string
  default     = "Default"
}