terraform {
  backend "gcs" {
    prefix = "terraform/env/prod/gcp/prod-shop/global/dns"
  }
}
