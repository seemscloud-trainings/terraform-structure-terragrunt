terraform {
  backend "gcs" {
    prefix = "terraform/env/prod/azure/subscription-prod/westeurope/mobile/network"
  }
}
