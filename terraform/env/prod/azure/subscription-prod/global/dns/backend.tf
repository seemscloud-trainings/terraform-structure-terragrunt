terraform {
  backend "gcs" {
    prefix = "terraform/env/prod/azure/subscription-prod/global/dns"
  }
}
