data "ns_connection" "kafka" {
  name     = "kafka"
  contract = "datastore/aws/kafka:*"
}

locals {
  kafka_cluster_arn = data.ns_connection.kafka.outputs.cluster_arn
}
