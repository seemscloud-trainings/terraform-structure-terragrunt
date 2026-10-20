terraform {
  backend "gcs" {
    prefix = "terraform/env/gcp/prod-mobile/prod/global/dns"
  }
}
