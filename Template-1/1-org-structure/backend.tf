# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

terraform {
  backend "gcs" {
    bucket = "rovindsouza-303505-terraform-state"
    prefix = "foundations/org-structure"
  }
}