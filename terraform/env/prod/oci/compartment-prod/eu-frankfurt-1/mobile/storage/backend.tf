terraform {
  backend "gcs" {
    prefix = "terraform/env/prod/oci/compartment-prod/eu-frankfurt-1/mobile/storage"
  }
}
