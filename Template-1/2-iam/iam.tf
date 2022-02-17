/*
Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose.
Your use of it is subject to your agreement with Google.
*/


//IAM bindings for organization
module "organization-iam-bindings" {
  source        = "terraform-google-modules/iam/google//modules/organizations_iam"
  version       = "~> 7.2"
  organizations = [var.org_id]
  mode          = "additive"

  bindings = {
    // Super admins
    "roles/resourcemanager.organizationAdmin" = [
      "group:${var.super_admin_group}",
    ]
    "roles/billing.creator" = [
      "group:${var.super_admin_group}",
    ]
    "roles/billing.admin" = [
      "group:${var.super_admin_group}",
    ]
    //Security Auditor
    "roles/orgpolicy.policyViewer" = [
      "group:${var.security_auditor_group}",
    ]
    "roles/iam.organizationRoleViewer" = [
      "group:${var.security_auditor_group}",
    ]
    "roles/iam.securityReviewer" = [
      "group:${var.security_auditor_group}",
    ]
    "roles/container.viewer" = [
      "group:${var.security_auditor_group}",
    ]
    "roles/compute.networkViewer" = [
      "group:${var.security_auditor_group}",
    ]

  }
}

// IAM bindings for Finance Billing admin
resource "google_billing_account_iam_member" "billing_cost_manager" {
  billing_account_id = var.billing_account_id
  role               = "roles/billing.costsManager"
  member             = "group:${var.finance_billing_admin_group}"
}

resource "google_billing_account_iam_member" "billing_user_billing_admin_group" {
  billing_account_id = var.billing_account_id
  role               = "roles/billing.user"
  member             = "group:${var.finance_billing_admin_group}"
}



