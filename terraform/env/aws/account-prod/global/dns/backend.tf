terraform {
  backend "gcs" {
    prefix = "terraform/env/aws/account-prod/global/dns"
  }
}
