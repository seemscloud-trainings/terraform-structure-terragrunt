terraform {
  backend "gcs" {
    prefix = "terraform/env/aws/account-prod/prod/global/dns"
  }
}
