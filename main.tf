data "cloudflare_queue_consumers" "queue_consumers_lookup" {
  for_each = var.queue_consumers_lookup

  queue_id   = each.value.queue_id
  account_id = each.value.account_id
  max_items  = each.value.max_items
}

