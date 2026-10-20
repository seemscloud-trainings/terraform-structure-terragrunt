terraform {
  backend "gcs" {
    prefix = "terraform/env/oci/compartment-prod/global/dns"
  }
}
