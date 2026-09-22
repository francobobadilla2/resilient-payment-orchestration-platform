provider "aws" {
  region = "us-east-1"

  allowed_account_ids = [
    "147449450940"
  ]

  default_tags {
    tags = {
      Project     = "resilient-payment-platform"
      Environment = "lab"
      ManagedBy   = "terraform"
      Owner       = "franco"
    }
  }
}
