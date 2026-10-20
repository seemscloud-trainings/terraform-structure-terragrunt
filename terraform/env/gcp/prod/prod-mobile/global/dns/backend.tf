terraform {
  backend "gcs" {
    prefix = "terraform/env/gcp/prod/prod-mobile/global/dns"
  }
}
