# Context
variable "tags" {
  default     = {}
  description = "Tags to add to the AWS Customer Managed Key."
  type        = map(any)
}

# AWS Managed Streaming for Kafka
variable "cluster_name" {
  description = "Name of the MSK cluster."
  type        = string
}

variable "enable_appautoscaling" {
  default     = false
  description = "Enable or disable MSK App Autoscaling."
  type        = bool
}

variable "kafka_version" {
  description = "Specify the desired Kafka software version."
  type        = string
}

variable "number_of_broker_nodes" {
  default     = 3
  description = "The desired total number of broker nodes in the kafka cluster."
  type        = number
}

variable "instance_type" {
  description = "Specify the instance type to use for the kafka brokers."
  type        = string
}

variable "client_subnets" {
  description = "A list of subnets to connect to in client VPC."
  type        = list(string)
}

variable "volume_size" {
  description = "The size in GiB of the EBS volume for the data drive on each broker node."
  type        = number
}

variable "security_groups" {
  description = "A list of the security groups to associate with the elastic network interfaces to control who can communicate with the cluster."
  type        = list(string)
}
