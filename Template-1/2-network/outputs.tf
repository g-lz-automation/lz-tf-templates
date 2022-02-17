/* 
Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. 
Your use of it is subject to your agreement with Google.
*/


output "prj_prod_project_id" {
  value       = module.prj-prod-vpc.project_id
  description = "prod vpc project id"
}

output "prj_nonprod_project_id" {
  value       = module.prj-non-prod-vpc.project_id
  description = "non prod vpc project id"
}
