output "queue_consumers_lookup_account_id" {
  description = "Map of account_id values across all queue_consumers_lookup, keyed the same as var.queue_consumers_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_queue_consumers.queue_consumers_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "queue_consumers_lookup_max_items" {
  description = "Map of max_items values across all queue_consumers_lookup, keyed the same as var.queue_consumers_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_queue_consumers.queue_consumers_lookup : k => v.max_items if v.max_items != null }
}
output "queue_consumers_lookup_queue_id" {
  description = "Map of queue_id values across all queue_consumers_lookup, keyed the same as var.queue_consumers_lookup except keys with no queue_id are omitted"
  value       = { for k, v in data.cloudflare_queue_consumers.queue_consumers_lookup : k => v.queue_id if v.queue_id != null && length(v.queue_id) > 0 }
}
output "queue_consumers_lookup_result" {
  description = "Map of result values across all queue_consumers_lookup, keyed the same as var.queue_consumers_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_queue_consumers.queue_consumers_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}

