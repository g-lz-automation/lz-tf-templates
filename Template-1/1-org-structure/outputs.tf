/**
 * Copyright 2021 Google LLC. 
 *
 * This software is provided as-is, without warranty or representation for any use or purpose. 
 * Your use of it is subject to your agreement with Google.
 */

output "org_id" {
  value       = var.org_id
  description = "The organization id"
}

output "admin_folder_name" {
  value       = google_folder.admin.name
  description = "The admin folder name"
}

output "applications_folder_name" {
  value       = google_folder.applications.name
  description = "The applications folder name"
}

output "swan_import_folder_name" {
  value       = google_folder.swan_import.name
  description = "The swan-import folder name"
}

output "data_folder_name" {
  value       = google_folder.data.name
  description = "The data folder name"
}

output "admin_prod_folder_name" {
  value       = google_folder.admin_prod.name
  description = "admin subfolder prod folder name"
}

output "admin_nonprod_folder_name" {
  value       = google_folder.admin_nonprod.name
  description = "admin subfolder non-prod folder name"
}

output "applications_prod_folder_name" {
  value       = google_folder.applications_prod.name
  description = "applications subfolder prod folder name"
}

output "applications_nonprod_folder_name" {
  value       = google_folder.applications_nonprod.name
  description = "applications subfolder non-prod folder name"
}

output "data_prod_folder_name" {
  value       = google_folder.data_prod.name
  description = "data subfolder prod folder name"
}

output "data_nonprod_folder_name" {
  value       = google_folder.data_nonprod.name
  description = "data subfolder non-prod folder name"
}
