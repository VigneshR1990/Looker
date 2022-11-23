view: clickstream_event_params {
  sql_table_name: ecommerce.clickstream_event_params ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: event_params_idx {
    type: number
    value_format_name: id
    sql: ${TABLE}.event_params_idx ;;
  }

  dimension: event_params_key {
    type: string
    sql: ${TABLE}.`event_params.key` ;;
  }

  dimension: event_params_value_double_value {
    type: string
    sql: ${TABLE}.`event_params.value.double_value` ;;
  }

  dimension: event_params_value_float_value {
    type: string
    sql: ${TABLE}.`event_params.value.float_value` ;;
  }

  dimension: event_params_value_int_value {
    type: string
    sql: ${TABLE}.`event_params.value.int_value` ;;
  }

  dimension: event_params_value_string_value {
    type: string
    sql: ${TABLE}.`event_params.value.string_value` ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
