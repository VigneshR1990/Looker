include: "../data_tests.lkml"
view: orders {
  sql_table_name: ecommerce.orders ;;
  drill_fields: [order_id]

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.orderId ;;
  }

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: item_quantity {
    type: string
    sql: ${TABLE}.itemQuantity ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}.orderDate ;;
  }

  dimension: order_total {
    type: string
    sql: ${TABLE}.orderTotal ;;
  }

  dimension: time_stamp {
    type: string
    sql: ${TABLE}.timeStamp ;;
  }

  dimension: unique_items_quantity {
    type: string
    sql: ${TABLE}.uniqueItemsQuantity ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.userId ;;
  }

  measure: count {
    type: count
    drill_fields: [order_id, users.device_mobile_brand_name, users.device_mobile_marketing_name, users.device_mobile_model_name, users.user_id]
  }
}
