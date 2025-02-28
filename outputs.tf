output "env" {
  value = []
}

output "event_sources" {
  value = [
    {
      source_arn        = local.kafka_cluster_arn
      batch_size        = var.batch_size
      topics            = jsonencode(var.topics)
      starting_position = var.starting_position
    }
  ]
}
