terraform {
  backend "gcs" {
    prefix = "terraform/env/gcp/prod-shop/europe-west1/shop/storage"
  }
}
