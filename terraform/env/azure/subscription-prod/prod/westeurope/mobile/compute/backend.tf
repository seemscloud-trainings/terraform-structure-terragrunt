terraform {
  backend "gcs" {
    prefix = "terraform/env/azure/subscription-prod/prod/westeurope/mobile/compute"
  }
}
