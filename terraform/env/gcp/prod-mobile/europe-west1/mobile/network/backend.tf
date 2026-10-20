terraform {
  backend "gcs" {
    prefix = "terraform/env/gcp/prod-mobile/europe-west1/mobile/network"
  }
}
