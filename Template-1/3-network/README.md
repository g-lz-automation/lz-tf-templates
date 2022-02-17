# Purpose and Resources provisioned

The purpose of this step is to create the following resources

1. **module prj-prod-vpc** creates prod vpc project
2. **module prj-non-prod-vpc** creates non prod vpc project
3. **module prj-sandbox-vpc** creates lab vpc(sandbox) project

#### CFT Module versions

| Name | version | 
|------|:-------------:|
| terraform-google-modules/project-factory/google | ~> 10.3 | 

## Dependency
- **Remote State**
    - This module is dependent on state from `NonApp-gcp-1-org-structure` work space.
    
## Prerequisites
- **Software**
   - [Terraform](https://www.terraform.io/downloads.html) >= 0.14.11
- **Previous module**
   -  Ensure that the boostrap module is provisioned before trying to provision this module.
   - Also ensure that 2.1-security-project module is provisioned before trying to provision this module.
- **Service account**
	- use the service account sa-geo-networking@project_id.iam.gserviceaccount.com that was created during the provisioning of the booststrap.
- **Permissions**
	- The service account mentioned to be used for this provisioning has already assigned these permissions in the preceeding deployments. 
		
## Steps for provisioning the resources using this code

1. Change into 2.3-network-project folder
2. Copy tfvars by running `cp terraform.example.tfvars terraform.tfvars` and update `terraform.tfvars` with values from your environment.
3. Run `terraform init`
4. Run `terraform plan` and review output
5. Run `terraform apply`


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## **Inputs**

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
|  organization | Defines the `organization` for the project naming convention [organization]-[geo]-[env]-[appId]-[system] | `string` | "wf" | yes |
|  geo | country name for creating project | `string` | "us" | yes |
|  prod_env | environment name for creating project name | `string` | "prod" | yes |
|  non-prod_env | environment name for creating project name | `string`| "non-prod" | yes  |
|  sandbox_env | environment name for creating project name| `string` | n/a | yes |
|  networking_appID_system | appID-system name for creating project name| `string` | n/a | yes |
|  activate_apis | The list of apis to activate within the project | `list(`string`)` | <pre>[<br>  "compute.googleapis.com"<br>]</pre> | yes |
|  labels_prod_vpc | Map of labels for prod vpc project | `map(string)` | {} | yes |
|  labels_non_prod_vpc | Map of labels for non prod vpc project | `map(string)` | {} | yes |
|  labels_sandbox_vpc | Map of labels for lab vpc project | `map(string)` | {} | yes |


## **Outputs**

| Name | Description |
|------|-------------|
| prj_prod_vpc | prod vpc project id |
| prj_nonprod_vpc | non prod vpc project id |
| prj_sandbox_vpc | lab vpc project id |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

