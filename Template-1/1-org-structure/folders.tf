/**
 * Copyright 2021 Google LLC. 
 *
 * This software is provided as-is, without warranty or representation for any use or purpose. 
 * Your use of it is subject to your agreement with Google.
 */

/******************************************
  Level-1 folders
 *****************************************/

resource "google_folder" "admin" {
  display_name = "admin"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "applications" {
  display_name = "applications"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "swan_import" {
  display_name = "other"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "data" {
  display_name = "data"
  parent       = "organizations/${var.org_id}"
}

/******************************************
  Level-2 folders
 *****************************************/
# subfolder under admin folder

resource "google_folder" "admin_prod" {
  display_name = "prod"
  parent       = google_folder.admin.name
}

resource "google_folder" "admin_nonprod" {
  display_name = "non-prod"
  parent       = google_folder.admin.name
}

# subfolder under applications folder

resource "google_folder" "applications_prod" {
  display_name = "prod"
  parent       = google_folder.applications.name
}

resource "google_folder" "applications_nonprod" {
  display_name = "non-prod"
  parent       = google_folder.applications.name
}

# subfolder under data folder

resource "google_folder" "data_prod" {
  display_name = "prod"
  parent       = google_folder.data.name
}

resource "google_folder" "data_nonprod" {
  display_name = "non-prod"
  parent       = google_folder.data.name
}