terraform {
  backend "gcs" {
    prefix = "terraform/env/aws/account-prod/eu-central-1/shop/storage"
  }
}
