terraform {
  backend "gcs" {
    prefix = "terraform/env/prod/oci/compartment-prod/global/dns"
  }
}
