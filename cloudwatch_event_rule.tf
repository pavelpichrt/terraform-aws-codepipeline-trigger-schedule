resource "aws_cloudwatch_event_rule" "pipeline_trigger" {
  name                = "pipeline-trigger-${var.codepipeline_name}"
  description         = "Triggers the deployment pipeline '${var.codepipeline_name}'"
  schedule_expression = var.schedule_expression
}
