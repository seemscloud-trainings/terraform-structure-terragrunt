terraform {
  backend "gcs" {
    prefix = "terraform/env/prod/gcp/prod-shop/europe-west1/shop/compute"
  }
}
