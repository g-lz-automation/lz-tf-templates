/* 
Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. 
Your use of it is subject to your agreement with Google.
*/


variable "prod_env" {
  description = "environment name for creating project"
  type        = string
  default     = "core"
}

variable "nonprod_env" {
  description = "environment name for creating project"
  type        = string
  default     = "core"
}

variable "networking_appID_system" {
  description = "environment name for creating project"
}

variable "activate_apis" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = ["compute.googleapis.com"]
}
variable "org_id" {
  type = string
}
variable "prod_networking_folder_id" {
  type = string
}
variable "np_networking_folder_id" {
  type = string
}
variable "billing_account" {
  type = string
}