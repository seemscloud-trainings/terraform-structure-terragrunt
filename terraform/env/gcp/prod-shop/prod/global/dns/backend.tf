terraform {
  backend "gcs" {
    prefix = "terraform/env/gcp/prod-shop/prod/global/dns"
  }
}
