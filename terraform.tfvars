# webhook-destination = {
   
# }
destination ={
  name = "email-example"
  type = "EMAIL"
  key   = "email"
  value = "danu96034@gmail.com"
  }

  channel ={
  name           = "channel-webhook"
  type           = "EMAIL"
#   destination_id = newrelic_notification_destination.destination.id
  product        = "IINT" 
  key   = "subject"
  value = "New Subject Title"
  
  }

  my_workflow = {
    
  name = "workflow"
  muting_rules_handling = "NOTIFY_ALL_ISSUES"

  name0 = "filter-name"
  type = "FILTER"

  attribute = "accumulations.tag.team"
  operator = "EXACTLY_MATCHES"
  values = [ "5257178" ]

    }
  

