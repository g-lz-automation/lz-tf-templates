# Purpose and Resources provisioned

The purpose of this step is to create the below resources

**Folders:**
1. Top level folders - Parent Org (us folder)
2. Second level folders - Parent Folder (core,nonprod, prod, forensics, sandbox and decommissioned)
3. Third level folders - Parent Folder (billing, logging, security, networking and data protection)


## Prerequisites
- **Software**
   - [Terraform](https://www.terraform.io/downloads.html) >= 0.14.11
- **Permissions**
	- The service account mentioned to be used for this provisioning has already assigned these permissions in the preceeding deployments. 
		
## Steps for provisioning the resources using this code

1. Change into 1-org-structure folder
2. Copy tfvars by running `cp terraform.example.tfvars terraform.tfvars` and update `terraform.tfvars` with values from your environment.
3. Run `terraform init`
4. Run `terraform plan` and review output
5. Run `terraform apply`



<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## **Inputs**
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| geo | Geo Folder name | `string` | n/a | yes |
| vms_to_allow | Allowed VMs for external IP access | `list(any)` | n/a | yes |
| domains_to_allow | Allowed Policy Member Domains | `list(any)` | n/a | yes |
| allow_load_balancer_types | Allowed values for compute.restrictLoadBalancerCreationForTypes | `list(any)` | n/a | yes |
| allow_protocol | Allowed values for compute.restrictProtocolForwardingCreationForTypes <br> Example:<br>[INTERNAL, EXTERNAL]| `list(any)` | n/a | yes |
| trusted_image_projects | Allowed values for compute.trustedImageProject | `list(any)` | n/a | yes |
| resourcelocations | For Org policy - Resource location | `list(string)` | n/a | yes |
| net_hub_project_id | Project ID of the Core Hub project | `string` | n/a | yes |
| cloud_eng_viewers_group | cloud eng viewers group  | `string` | n/a | yes |
| finance_billing_admin_group | finance billing admin group | `string` | n/a | yes |
| super_admin_group  | super admin group | `string` | n/a | yes |
| security_auditor_group | security editor group | `string` | n/a | yes |
| cloud_eng_network_group | cloud eng network group  | `string` | n/a | yes |
| prod_viewer_group | Group for Prod folder viewer | `string` | n/a | yes |
| nonprod_viewer_group | Group for Non-Prod folder viewer  | `string` | n/a | yes |
| sandbox_operations_group | Group for sandbox folder viewer  | `string` | n/a | yes |
| forensics_operations_group | Group for forensics folder viewer  | `string` | n/a | yes |
| decomm_operations_group | Group for decomm operations folder viewer  | `string` | n/a | yes |

## **Outputs**

| Name | Description |
|------|-------------|
| geo_folder | Level 1 - Geo Folder details |
| core | Level 2 - Core Folder details |
| prod | Level 2 - Prod Folder details |
| nonprod | Level 2 - Non-prod Folder details |
| forensics | Level 2 - Forensics Folder details |
| sandbox | Level 2 - Sandbox Folder details |
| decomissioned | Level 2 - Decomissioned Folder details |
| billing | Level 3 - Billing Folder details |
| logging | Level 3 - Logging Folder details |
| security | Level 3 - Security Folder details |
| dataprotection | Level 3 - Dataprotection Folder details |
| networking | Level 3 - NetWorking Folder details |
| service_account | List of Service accounts created |
| org_id | Organization ID |
| billing_account | Billing Account for Organization |
| service_accounts_map | Map of Service accounts created |







