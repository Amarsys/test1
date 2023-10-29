variable "service_name" {
  description = "Name of the ECS service"
  type        = string
}

variable "cluster_id" {
  description = "ID of the ECS cluster"
  type        = string
}

variable "ecs_task_definition_arn" {
  description = "ARN of the ECS task definition"
  type        = string
}

variable "desired_count" {
  description = "Desired count for the ECS service"
  type        = number
}

variable "subnet_ids" {
  description = "List of subnet IDs for the network configuration"
  type        = list(string)
}

variable "launch_type" {
  description = "ECS launch type (FARGATE or EC2)"
  type        = string
  default     = "FARGATE" 
}

variable "assign_public_ip" {
  description = "Whether to assign a public IP to the task"
  type        = bool
  default     = true 
}

variable "use_fargate" {
  description = "Set to true to use Fargate launch type, false to use EC2 launch type."
  type        = bool
}