resource "aws_ecs_service" "ecs_service" {
  name            = var.service_name
  cluster         = var.cluster_id
  task_definition = var.ecs_task_definition_arn
  desired_count   = var.desired_count

  dynamic "network_configuration" {
    for_each = var.use_fargate ? [1] : []
    content {
      subnets          = var.subnet_ids
      assign_public_ip = var.assign_public_ip
    }
  }
  
  launch_type = var.use_fargate ? "FARGATE" : "EC2"
}
