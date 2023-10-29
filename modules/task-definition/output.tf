output "task_definition_arn" {
  value = aws_ecs_task_definition.ecs_task_definition.arn
}

output "role_arn" {
  value = aws_iam_role.ecs_task_execution_role.arn
}

output "task_role_arn" {
  value = aws_iam_role.ecs_task_role.arn
}