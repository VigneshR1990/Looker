connection: "atlas-looker"

# include all the views
include: "/views/**/*.view"

datagroup: ecommerce_production_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ecommerce_production_default_datagroup

explore: clickstream {
  join: users {
    type: left_outer
    sql_on: ${clickstream.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: clickstream_event_params {}

explore: clickstream_items {}

explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: events_items {}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: orders_line_items {}

explore: products {}

explore: users {}
