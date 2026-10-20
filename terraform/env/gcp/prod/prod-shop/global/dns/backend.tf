terraform {
  backend "gcs" {
    prefix = "terraform/env/gcp/prod/prod-shop/global/dns"
  }
}
