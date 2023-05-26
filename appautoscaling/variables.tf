variable "cluster_arn" {
  description = "Amazon Resource Name (ARN) of the MSK cluster."
  type        = string
}

variable "cluster_name" {
  description = "Name of the MSK cluster."
  type        = string
}

variable "target_value" {
  default     = 80
  description = "If more than x-percent is occupied, new memory is added."
  type        = number
}

variable "disable_scale_in" {
  default     = true
  description = "Whether scale in by the target tracking policy is disabled."
  type        = bool
}

variable "max_capacity" {
  default     = 1000
  description = "The maximum capacity of the Auto Scaling group."
  type        = number
}
