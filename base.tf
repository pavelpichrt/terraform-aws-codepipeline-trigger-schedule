module "base" {
  source = "pavelpichrt/codepipeline-trigger-base/aws"

  type                       = "schedule"
  codepipeline_name          = var.codepipeline_name
  handler_implementation_dir = "${path.module}/handler"

  eventbridge_rule = {
    name = aws_cloudwatch_event_rule.pipeline_trigger.name
    arn  = aws_cloudwatch_event_rule.pipeline_trigger.arn
  }
}
