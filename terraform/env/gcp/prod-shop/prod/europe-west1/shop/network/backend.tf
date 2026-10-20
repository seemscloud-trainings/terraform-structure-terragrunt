terraform {
  backend "gcs" {
    prefix = "terraform/env/gcp/prod-shop/prod/europe-west1/shop/network"
  }
}
