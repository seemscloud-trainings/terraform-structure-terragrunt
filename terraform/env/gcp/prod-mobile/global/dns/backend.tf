terraform {
  backend "gcs" {
    prefix = "terraform/env/gcp/prod-mobile/global/dns"
  }
}
