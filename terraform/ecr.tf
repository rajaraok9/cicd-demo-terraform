resource "aws_ecr_repository" "patient_service" {
  name = "patient-intake-service"
}

resource "aws_ecr_repository" "workflow_worker" {
  name = "workflow-worker"
}