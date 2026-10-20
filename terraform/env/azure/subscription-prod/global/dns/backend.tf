terraform {
  backend "gcs" {
    prefix = "terraform/env/azure/subscription-prod/global/dns"
  }
}
