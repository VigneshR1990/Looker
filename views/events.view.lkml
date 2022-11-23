view: events {
  sql_table_name: ecommerce.events ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: engagement_time_msec {
    type: string
    sql: ${TABLE}.engagementTimeMsec ;;
  }

  dimension: event_bundle_sequence_id {
    type: string
    sql: ${TABLE}.eventBundleSequenceId ;;
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}.eventDate ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.eventName ;;
  }

  dimension: event_timestamp {
    type: string
    sql: ${TABLE}.eventTimestamp ;;
  }

  dimension: ga_session_id {
    type: string
    sql: ${TABLE}.gaSessionId ;;
  }

  dimension: unique_items {
    type: string
    sql: ${TABLE}.uniqueItems ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.userId ;;
  }

  measure: count {
    type: count
    drill_fields: [event_name, users.device_mobile_brand_name, users.device_mobile_marketing_name, users.device_mobile_model_name, users.user_id]
  }
}
