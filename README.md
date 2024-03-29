<!-- BEGIN_TF_DOCS -->
[![Geek Cell GmbH](https://raw.githubusercontent.com/geekcell/.github/main/geekcell-github-banner.png)](https://www.geekcell.io/)

### Code Quality
[![License](https://img.shields.io/github/license/geekcell/terraform-aws-msk-cluster)](https://github.com/geekcell/terraform-aws-msk-cluster/blob/master/LICENSE)
[![GitHub release (latest tag)](https://img.shields.io/github/v/release/geekcell/terraform-aws-msk-cluster?logo=github&sort=semver)](https://github.com/geekcell/terraform-aws-msk-cluster/releases)
[![Release](https://github.com/geekcell/terraform-aws-msk-cluster/actions/workflows/release.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-msk-cluster/actions/workflows/release.yaml)
[![Validate](https://github.com/geekcell/terraform-aws-msk-cluster/actions/workflows/validate.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-msk-cluster/actions/workflows/validate.yaml)
[![Lint](https://github.com/geekcell/terraform-aws-msk-cluster/actions/workflows/linter.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-msk-cluster/actions/workflows/linter.yaml)

<!--
Comment in if Bridgecrew is configured

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

-->

# Terraform AWS MSK Cluster Module

Terraform module which creates a MSK Cluster. The focus on this module lies within it's simplicity by providing
default values that should make sense for most use cases.

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
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.4 |

## Resources

- resource.aws_msk_cluster.main (main.tf#7)

# Examples
### Basic Example
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
### With Autoscaling
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
