resource "aws_ecr_repository" "patient_service" {
  name = "patient-intake-service"

  tags = {
    Environment = "dev"
    Project     = "healthcare-platform"
  }
}

resource "aws_ecr_repository" "workflow_worker" {
  name = "workflow-worker"

  tags = {
    Environment = "dev"
    Project     = "healthcare-platform"
  }
}