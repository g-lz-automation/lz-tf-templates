module "vpc_prod" {
  source  = "terraform-google-modules/network/google"
  version = "~> 4.0"

  project_id   = module.prj-prod-vpc.project_id
  network_name = "prod-vpc"
  routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = "us-west1"
    },
  ]
}

module "vpc_nonprod" {
  source  = "terraform-google-modules/network/google"
  version = "~> 4.0"

  project_id   = module.prj-non-prod-vpc.project_id
  network_name = "nonprod-vpc"
  routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.20.0/24"
      subnet_region = "us-west1"
    },
  ]
}