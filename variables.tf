variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision"
  type        = string
  default     = "1024" 
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  type        = string
  default     = "2048"  
}

variable "app_image" {
  description = "Docker image to run in this ECS task"
  type        = string
  default     = "nginx:latest" 
}

variable "app_port" {
  description = "Port exposed on the Docker image"
  type        = string
  default     = "80" 
}

variable "app_count" {
  description = "Number of docker containers to run"
  type        = number
  default     = 2  
}
