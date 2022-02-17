/* 
Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. 
Your use of it is subject to your agreement with Google.
*/


resource "time_static" "created" {}

/******************************************
  Project for prod-vpc-project
*****************************************/

module "prj-prod-vpc" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 10.1"

  name                           = "${var.prod_env}-${var.networking_appID_system}"
  random_project_id              = true
  org_id                         = var.org_id
  folder_id                      = var.prod_networking_folder_id
  billing_account                = var.billing_account
  activate_apis                  = var.activate_apis
  create_project_sa              = false
  enable_shared_vpc_host_project = true
}

/******************************************
  Project for non-prod-vpc-project
*****************************************/

module "prj-non-prod-vpc" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 10.1"

  name                           = "${var.nonprod_env}-${var.networking_appID_system}"
  random_project_id              = true
  org_id                         = var.org_id
  folder_id                      = var.np_networking_folder_id
  billing_account                = var.billing_account
  activate_apis                  = var.activate_apis
  create_project_sa              = false
  enable_shared_vpc_host_project = true
}
