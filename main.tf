/**
 * # Terraform AWS MSK Cluster Module
 *
 * This Terraform module provides a preconfigured solution for setting up
 * AWS MSK clusters in your AWS account. With this module, you can easily and
 * efficiently create and manage MSK clusters with advanced features such as
 * encryption and high availability. Our team has extensive experience working
 * with AWS MSK and has optimized this module to provide the best possible
 * experience for users.
 *
 * By using this Terraform module, you can save time and effort in setting up
 * and managing your MSK clusters, as well as ensure that your data is secure
 * and protected. The module is configured to ensure that topics are never
 * deleted, replication is set to at least 3, and retention time is set to
 * unlimited. The module encapsulates all necessary configurations, making it
 * easy to use and integrate into your existing AWS environment. Whether you
 * are just getting started with AWS MSK or looking for a more efficient way
 * to manage your clusters, this Terraform module provides a preconfigured
 * solution with advanced features such as encryption and high availability.
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
    encryption_at_rest_kms_key_arn = module.kms["storage"].key_arn
  }

  logging_info {
    broker_logs {
      cloudwatch_logs {
        enabled   = true
        log_group = module.cloudwatch_log_group["broker_logs"].name
      }
    }
  }

  tags = var.tags
}

module "msk_configuration" {
  source        = "./modules/msk_configuration"
  kafka_version = var.kafka_version
  name          = var.cluster_name
}

module "appautoscaling" {
  count        = var.enable_appautoscaling ? 1 : 0
  source       = "./modules/appautoscaling"
  cluster_arn  = aws_msk_cluster.main.arn
  cluster_name = var.cluster_name
}

module "kms" {
  for_each = toset(["storage"])
  source   = "github.com/geekcell/terraform-aws-kms?ref=v1.0"
  alias    = format("alias/msk/cluster/%s/%s", var.cluster_name, each.key)
}

module "cloudwatch_log_group" {
  for_each          = toset(["broker_logs"])
  source            = "github.com/geekcell/terraform-aws-cloudwatch-log-group?ref=v1.0"
  name              = format("/msk/cluster/%s/%s", var.cluster_name, each.key)
  retention_in_days = 30
}
