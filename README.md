<!-- BEGIN_TF_DOCS -->
[![Geek Cell GmbH](https://raw.githubusercontent.com/geekcell/template-terraform-module/main/docs/assets/logo.svg)](https://www.geekcell.io/)

### Code Quality
[![License](https://img.shields.io/github/license/geekcell/terraform-aws-msk-cluster)](https://github.com/geekcell/terraform-aws-msk-cluster/blob/master/LICENSE)
[![GitHub release (latest tag)](https://img.shields.io/github/v/release/geekcell/terraform-aws-msk-cluster?logo=github&sort=semver)](https://github.com/geekcell/terraform-aws-msk-cluster/releases)
[![Release](https://github.com/geekcell/terraform-aws-msk-cluster/actions/workflows/release.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-msk-cluster/actions/workflows/release.yaml)
[![Validate](https://github.com/geekcell/terraform-aws-msk-cluster/actions/workflows/validate.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-msk-cluster/actions/workflows/validate.yaml)
[![Lint](https://github.com/geekcell/terraform-aws-msk-cluster/actions/workflows/linter.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-msk-cluster/actions/workflows/linter.yaml)

### Security
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=INFRASTRUCTURE+SECURITY)

#### Cloud
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=CIS+AWS+V1.2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/cis_aws_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=CIS+AWS+V1.3)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/cis_azure)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=CIS+AZURE+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/cis_azure_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=CIS+AZURE+V1.3)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/cis_gcp)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=CIS+GCP+V1.1)

##### Container
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/cis_kubernetes_16)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=CIS+KUBERNETES+V1.6)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/cis_eks_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=CIS+EKS+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/cis_gke_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=CIS+GKE+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/cis_kubernetes)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=CIS+KUBERNETES+V1.5)

#### Data protection
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/soc2)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=SOC2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/pci)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=PCI-DSS+V3.2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/pci_dss_v321)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=PCI-DSS+V3.2.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/iso)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=ISO27001)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/nist)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=NIST-800-53)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/hipaa)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=HIPAA)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-msk-cluster/fedramp_moderate)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-msk-cluster&benchmark=FEDRAMP+%28MODERATE%29)

# Terraform AWS MSK Cluster Module

This Terraform module provides a preconfigured solution for setting up
AWS MSK clusters in your AWS account. With this module, you can easily and
efficiently create and manage MSK clusters with advanced features such as
encryption and high availability. Our team has extensive experience working
with AWS MSK and has optimized this module to provide the best possible
experience for users.

By using this Terraform module, you can save time and effort in setting up
and managing your MSK clusters, as well as ensure that your data is secure
and protected. The module is configured to ensure that topics are never
deleted, replication is set to at least 3, and retention time is set to
unlimited. The module encapsulates all necessary configurations, making it
easy to use and integrate into your existing AWS environment. Whether you
are just getting started with AWS MSK or looking for a more efficient way
to manage your clusters, this Terraform module provides a preconfigured
solution with advanced features such as encryption and high availability.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_client_subnets"></a> [client\_subnets](#input\_client\_subnets) | A list of subnets to connect to in client VPC. | `list(string)` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the MSK cluster. | `string` | n/a | yes |
| <a name="input_enable_appautoscaling"></a> [enable\_appautoscaling](#input\_enable\_appautoscaling) | Enable or disable MSK App Autoscaling. | `bool` | `false` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Specify the instance type to use for the kafka brokers. | `string` | n/a | yes |
| <a name="input_kafka_version"></a> [kafka\_version](#input\_kafka\_version) | Specify the desired Kafka software version. | `string` | n/a | yes |
| <a name="input_number_of_broker_nodes"></a> [number\_of\_broker\_nodes](#input\_number\_of\_broker\_nodes) | The desired total number of broker nodes in the kafka cluster. | `number` | `3` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | A list of the security groups to associate with the elastic network interfaces to control who can communicate with the cluster. | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to the AWS Customer Managed Key. | `map(any)` | `{}` | no |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | The size in GiB of the EBS volume for the data drive on each broker node. | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bootstrap_brokers_tls"></a> [bootstrap\_brokers\_tls](#output\_bootstrap\_brokers\_tls) | One or more DNS names (or IP addresses) and TLS port pairs. |
| <a name="output_zookeeper_connect_string"></a> [zookeeper\_connect\_string](#output\_zookeeper\_connect\_string) | A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

- resource.aws_msk_cluster.main (main.tf#21)

# Examples
### basic-example
```hcl
module "basic-example" {
  source          = "../../"
  client_subnets  = ["subnet-12345678", "subnet-87654321"]
  cluster_name    = "cluster1"
  instance_type   = "kafka.t3.small"
  kafka_version   = "3.2.0"
  security_groups = ["sg-12345678"]
  volume_size     = 10
}
```
### with-autoscaling
```hcl
module "with-autoscaling" {
  source          = "../../"
  client_subnets  = ["subnet-12345678", "subnet-87654321"]
  cluster_name    = "cluster1"
  instance_type   = "kafka.t3.small"
  kafka_version   = "3.2.0"
  security_groups = ["sg-12345678"]
  volume_size     = 10

  enable_appautoscaling = true
}
```
<!-- END_TF_DOCS -->
