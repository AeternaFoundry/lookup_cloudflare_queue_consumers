variable "queue_consumers_lookup" {
  description = <<EOT
Map of queue_consumers_lookup, attributes below
Required:
    - queue_id
Optional:
    - account_id
    - max_items
EOT

  type = map(object({
    queue_id   = string
    account_id = optional(string)
    max_items  = optional(number)
  }))
}

