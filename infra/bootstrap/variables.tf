variable "monthly_budget_usd" {
  description = "Monthly AWS cost budget in USD"
  type        = number
  default     = 5

  validation {
    condition     = var.monthly_budget_usd > 0
    error_message = "The monthly budget must be greater than zero."
  }
}

variable "budget_alert_email" {
  description = "Email address that receives AWS Budget alerts"
  type        = string
  sensitive   = true

  validation {
    condition     = (length(trimspace(var.budget_alert_email)) > 3 && strcontains(var.budget_alert_email, "@"))
    error_message = "The budget alert email must look like a valid email address."
  }
}
