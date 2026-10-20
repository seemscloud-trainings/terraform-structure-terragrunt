terraform {
  backend "gcs" {
    prefix = "terraform/env/gcp/prod/prod-shop/europe-west1/shop/compute"
  }
}
