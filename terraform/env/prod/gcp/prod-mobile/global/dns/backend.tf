terraform {
  backend "gcs" {
    prefix = "terraform/env/prod/gcp/prod-mobile/global/dns"
  }
}
