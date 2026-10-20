terraform {
  backend "gcs" {
    prefix = "terraform/env/prod/aws/account-prod/eu-central-1/shop/compute"
  }
}
