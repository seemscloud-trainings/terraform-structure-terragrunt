terraform {
  backend "gcs" {
    prefix = "terraform/env/oci/compartment-prod/prod/eu-frankfurt-1/mobile/compute"
  }
}
