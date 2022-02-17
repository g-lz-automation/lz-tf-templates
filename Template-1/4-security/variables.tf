/* 
Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. 
Your use of it is subject to your agreement with Google.
*/


variable "org_id" {
  description = "Organization id"
  type        = string
}


variable "vms_to_allow" {
  description = "Allowed VMs for external IP access"
  type        = list(any)
  default     = []
}

variable "domains_to_allow" {
  description = "Allowed Policy Member Domains"
  type        = list(any)
  default     = []

}