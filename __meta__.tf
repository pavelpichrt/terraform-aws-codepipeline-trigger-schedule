variable "codepipeline_name" {}

variable "schedule_expression" {
  description = "Docs: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html"
}

# ===================================

output "lambda_function" {
  value = module.base.lambda_function
}

output "lambda_service_role" {
  value = module.base.lambda_service_role
}
