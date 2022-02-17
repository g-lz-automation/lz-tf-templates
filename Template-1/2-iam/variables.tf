/* 
Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. 
Your use of it is subject to your agreement with Google.
*/

variable "org_id" {
  description = "Organization ID"
  type        = string
}
variable "billing_account_id" {
  description = "Billing ID"
  type        = string
}



variable "super_admin_group" {
  description = "super admin group"
  type        = string
}

variable "security_auditor_group" {
  description = "security editor group"
  type        = string
}

variable "finance_billing_admin_group" {
  description = "finance billing admin group"
  type        = string
}

