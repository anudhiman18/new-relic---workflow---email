resource "newrelic_notification_destination" "destination" {
  name = var.destination.name
  type = var.destination.type
 
  property {
    key   = var.destination.key
    value = var.destination.value
  }
}
resource "newrelic_notification_channel" "channel" {
  name           = var.channel.name
  type           = var.channel.type
  destination_id = newrelic_notification_destination.destination.id
  product        = var.channel.product // Please note the product used!
 
  property {
    key   = var.channel.key
    value = var.channel.value
  }
 
  # property {
  #   key   = "customDetailsEmail"
  #   value = "issue id - {{issueId}}"
  # }
}

resource "newrelic_workflow" "my_workflow" {
    # for_each = var.my_workflow
  name = var.my_workflow.name
  muting_rules_handling = var.my_workflow.muting_rules_handling

  issues_filter {
    name = var.my_workflow.name0
    type = var.my_workflow.type

    predicate {
      attribute = var.my_workflow.attribute
      operator = var.my_workflow.operator
      values = var.my_workflow.values
          }
  }

  destination {
    channel_id = newrelic_notification_channel.channel.id
  }
}