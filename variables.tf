variable "app_metadata" {
  description = <<EOF
Nullstone automatically injects metadata from the app module into this module through this variable.
This variable is a reserved variable for capabilities.
EOF

  type    = map(string)
  default = {}
}

locals {
  role_name = var.app_metadata["role_name"]
}

variable "batch_size" {
  description = "Batch size caps the number of records that the Lambda function will receive. Default = 10."
  type        = number
  default     = 10
}

variable "topics" {
  type        = set(string)
  default     = []
  description = "List of Kafka topics that will trigger the Lambda function."
}

variable "starting_position" {
  type        = string
  default     = "LATEST"
  description = <<EOF
The position in the stream where AWS Lambda should start reading.
Must be one of LATEST, TRIM_HORIZON, or AT_TIMESTAMP.
Defaults to LATEST.
EOF
}
