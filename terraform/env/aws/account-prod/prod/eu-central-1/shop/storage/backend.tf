terraform {
  backend "gcs" {
    prefix = "terraform/env/aws/account-prod/prod/eu-central-1/shop/storage"
  }
}
