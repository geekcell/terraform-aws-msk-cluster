resource "aws_msk_configuration" "main" {
  kafka_versions = [var.kafka_version]
  name           = var.name
  description    = "Amazon Managed Streaming for Kafka configuration"

  server_properties = join("\n", [for k, v in var.server_properties : format("%s = %s", k, v)])
}
