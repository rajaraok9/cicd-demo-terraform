resource "aws_sqs_queue" "patient_queue" {
  name = "patient-intake-queue"

  visibility_timeout_seconds = 30
  message_retention_seconds  = 345600
}