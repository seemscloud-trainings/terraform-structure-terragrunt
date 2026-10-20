terraform {
  backend "gcs" {
    prefix = "terraform/env/gcp/prod-shop/global/dns"
  }
}
