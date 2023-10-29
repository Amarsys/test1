variable "tags" {
  type        = map(any)
  description = "A map of tags to assign to the resource"
  default = {}
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID"
}

variable "routes" {
  description = "List of dynamic routes to be added to the route table."
  type        = list(map(string))
  default     = [

  ]
}
