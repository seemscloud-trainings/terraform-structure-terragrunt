terraform {
  backend "gcs" {
    prefix = "terraform/env/prod/gcp/prod-mobile/europe-west1/mobile/network"
  }
}
