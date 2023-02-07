variable "name" {
  description = "Name of the MSK cluster."
  type        = string
}

variable "kafka_version" {
  description = "Specify the desired Kafka software version."
  type        = string
}

variable "server_properties" {
  default = {
    "auto.create.topics.enable"      = "false"
    "default.replication.factor"     = "3"
    "delete.topic.enable"            = "false"
    "log.retention.bytes"            = "-1"
    "log.retention.hours"            = "-1"
    "min.insync.replicas"            = "2"
    "unclean.leader.election.enable" = "false"
  }
  description = "Contents of the server.properties file. "
  type        = map(string)
}
