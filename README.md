# AWS Codepipeline Trigger: EventBridge Rule

Creates a lambda function connected to an EventBridge Rule that triggers a specified Codepipeline.

## Usage

```terraform
module "my_pipeline_trigger" {
  source = "pavelpichrt/codepipeline-trigger-schedule/aws"

  codepipeline_name = "my-pipeline"

  # https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html
  schedule_expression = "rate(5 minutes)"
}
```
