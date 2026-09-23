terraform {
  backend "s3" {
    bucket       = "resilient-payment-platform-tfstate-147449450940-us-east-1"
    key          = "bootstrap/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true

    allowed_account_ids = [
      "147449450940"
    ]
  }
}
