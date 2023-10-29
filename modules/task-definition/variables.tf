variable "task_family" {
  description = "The name of your ECS task family"
  type        = string
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision"
  type        = string
  default     = "1024"  # Set a default value that matches your requirements
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  type        = string
  default     = "2048"  # Set a default value that matches your requirements
}

variable "app_image" {
  description = "Docker image to run in this ECS task"
  type        = string
  default     = "nginx:latest"  # Set a default Docker image
}

variable "app_port" {
  description = "Port exposed on the Docker image"
  type        = string
  default     = "80"  # Set a default port
}

variable "role_name" {
  description = "Name for the ECS task execution role"
  type        = string
  default     = "demo"
}

variable "task_role_name" {
  description = "Name for the ECS task role"
  type        = string
  default     = "ecs-task-role"
}

variable "launch_type" {
  description = "ECS launch type (FARGATE or EC2)"
  type        = string
  default     = "FARGATE" 
}

variable "network_mode" {
  description = "The network mode for the ECS task definition."
  type        = string
  default     = "awsvpc" 
}
