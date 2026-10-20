terraform {
  backend "gcs" {
    prefix = "terraform/env/gcp/prod/prod-mobile/europe-west1/mobile/compute"
  }
}
