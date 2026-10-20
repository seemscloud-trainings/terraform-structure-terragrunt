terraform {
  backend "gcs" {
    prefix = "terraform/env/gcp/prod-mobile/prod/europe-west1/mobile/storage"
  }
}
