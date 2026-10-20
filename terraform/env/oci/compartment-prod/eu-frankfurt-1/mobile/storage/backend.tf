terraform {
  backend "gcs" {
    prefix = "terraform/env/oci/compartment-prod/eu-frankfurt-1/mobile/storage"
  }
}
