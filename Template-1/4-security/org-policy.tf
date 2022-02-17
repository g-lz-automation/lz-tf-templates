/* 
Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. 
Your use of it is subject to your agreement with Google.
*/


module "org_compute_requireOsLogin" {
  source          = "terraform-google-modules/org-policy/google"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
  policy_type     = "boolean"
  enforce         = true
  constraint      = "constraints/compute.requireOsLogin"
}

module "org_skip_default_network" {
  source          = "terraform-google-modules/org-policy/google//modules/skip_default_network"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
}

module "org_compute_restrictCloudNATUsage" {
  source          = "terraform-google-modules/org-policy/google"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
  policy_type     = "list"
  constraint      = "constraints/compute.restrictCloudNATUsage"
}

module "org_vm_external_ip_access" {
  source          = "terraform-google-modules/org-policy/google//modules/restrict_vm_external_ips"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
  vms_to_allow    = var.vms_to_allow
}

module "org_allowedPolicyMemberDomains" {
  source           = "terraform-google-modules/org-policy/google//modules/domain_restricted_sharing"
  version          = "~> 3.0.2"
  organization_id  = var.org_id
  policy_for       = "organization"
  domains_to_allow = var.domains_to_allow
}

module "org_appengine_disableCodeDownload" {
  source          = "terraform-google-modules/org-policy/google"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
  policy_type     = "boolean"
  enforce         = true
  constraint      = "constraints/appengine.disableCodeDownload"
}

module "org_cloudfunctions_requireVPCConnector" {
  source          = "terraform-google-modules/org-policy/google"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
  policy_type     = "boolean"
  enforce         = true
  constraint      = "constraints/cloudfunctions.requireVPCConnector"
}

module "org_sql_restrictPublicIp" {
  source          = "terraform-google-modules/org-policy/google"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
  policy_type     = "boolean"
  enforce         = true
  constraint      = "constraints/sql.restrictPublicIp"
}

module "org_compute_disableInternetNetworkEndpointGroup" {
  source          = "terraform-google-modules/org-policy/google"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
  policy_type     = "boolean"
  enforce         = true
  constraint      = "constraints/compute.disableInternetNetworkEndpointGroup"
}

module "org_compute_disableNestedVirtualization" {
  source          = "terraform-google-modules/org-policy/google"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
  policy_type     = "boolean"
  enforce         = true
  constraint      = "constraints/compute.disableNestedVirtualization"
}


module "org_compute_vmCanIpForward" {
  source          = "terraform-google-modules/org-policy/google"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
  policy_type     = "list"
  constraint      = "constraints/compute.vmCanIpForward"
}

module "org_iam_automaticIamGrantsForDefaultServiceAccounts" {
  source          = "terraform-google-modules/org-policy/google"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
  policy_type     = "boolean"
  enforce         = false
  constraint      = "constraints/iam.automaticIamGrantsForDefaultServiceAccounts"
}

module "org_storage_uniformBucketLevelAccess" {
  source          = "terraform-google-modules/org-policy/google"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
  policy_type     = "boolean"
  enforce         = true
  constraint      = "constraints/storage.uniformBucketLevelAccess"
}

module "org_iam_disableServiceAccountKeyUpload" {
  source          = "terraform-google-modules/org-policy/google"
  version         = "~> 3.0.2"
  organization_id = var.org_id
  policy_for      = "organization"
  enforce         = true
  policy_type     = "boolean"
  constraint      = "constraints/iam.disableServiceAccountKeyUpload"
}