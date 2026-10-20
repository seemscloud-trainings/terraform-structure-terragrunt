terraform {
  backend "gcs" {
    prefix = "terraform/env/oci/compartment-prod/prod/global/dns"
  }
}
