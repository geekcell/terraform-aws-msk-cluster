/**
 * # Terraform AWS MSK Cluster Module
 *
 * Terraform module which creates a MSK Cluster. The focus on this module lies within it's simplicity by providing
 * default values that should make sense for most use cases.
 */
resource "aws_msk_cluster" "main" {
  cluster_name           = var.cluster_name
  kafka_version          = var.kafka_version
  number_of_broker_nodes = var.number_of_broker_nodes

  broker_node_group_info {
    az_distribution = "DEFAULT"
    instance_type   = var.instance_type
    client_subnets  = var.client_subnets
    storage_info {
      ebs_storage_info {
        volume_size = var.volume_size
      }
    }
    security_groups = var.security_groups
  }

  configuration_info {
    arn      = module.msk_configuration.arn
    revision = module.msk_configuration.latest_revision
  }

  encryption_info {
    encryption_at_rest_kms_key_arn = module.kms.key_arn
  }

  logging_info {
    broker_logs {
      cloudwatch_logs {
        enabled   = true
        log_group = module.cloudwatch_log_group.name
      }
    }
  }

  tags = var.tags
}

module "msk_configuration" {
  source = "./modules/msk_configuration"

  kafka_version = var.kafka_version
  name          = var.cluster_name
}

module "appautoscaling" {
  count  = var.enable_appautoscaling ? 1 : 0
  source = "./modules/appautoscaling"

  cluster_arn  = aws_msk_cluster.main.arn
  cluster_name = var.cluster_name
}

module "kms" {
  source  = "geekcell/kms/aws"
  version = ">= 1.0.0, < 2.0.0"

  alias = "alias/msk/cluster/${var.cluster_name}/storage"
  tags  = var.tags
}

module "cloudwatch_log_group" {
  source  = "geekcell/cloudwatch-log-group/aws"
  version = ">= 1.0.0, < 2.0.0"

  name              = "/msk/cluster/${var.cluster_name}/broker-logs"
  retention_in_days = 30

  tags = var.tags
}
