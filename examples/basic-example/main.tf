module "basic-example" {
  source          = "../../"
  client_subnets  = ["subnet-12345678", "subnet-87654321"]
  cluster_name    = "cluster1"
  instance_type   = "kafka.t3.small"
  kafka_version   = "3.2.0"
  security_groups = ["sg-12345678"]
  volume_size     = 10
}
