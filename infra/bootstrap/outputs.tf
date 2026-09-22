output "terraform_state_bucket" {
  description = "S3 bucket used by Terraform backends"
  value       = aws_s3_bucket.terraform_state.id
}
