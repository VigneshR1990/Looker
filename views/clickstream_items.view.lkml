view: clickstream_items {
  sql_table_name: ecommerce.clickstream_items ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: items_affiliation {
    type: string
    sql: ${TABLE}.`items.affiliation` ;;
  }

  dimension: items_coupon {
    type: string
    sql: ${TABLE}.`items.coupon` ;;
  }

  dimension: items_creative_name {
    type: string
    sql: ${TABLE}.`items.creative_name` ;;
  }

  dimension: items_creative_slot {
    type: string
    sql: ${TABLE}.`items.creative_slot` ;;
  }

  dimension: items_idx {
    type: number
    value_format_name: id
    sql: ${TABLE}.items_idx ;;
  }

  dimension: items_item_brand {
    type: string
    sql: ${TABLE}.`items.item_brand` ;;
  }

  dimension: items_item_category {
    type: string
    sql: ${TABLE}.`items.item_category` ;;
  }

  dimension: items_item_category2 {
    type: string
    sql: ${TABLE}.`items.item_category2` ;;
  }

  dimension: items_item_category3 {
    type: string
    sql: ${TABLE}.`items.item_category3` ;;
  }

  dimension: items_item_category4 {
    type: string
    sql: ${TABLE}.`items.item_category4` ;;
  }

  dimension: items_item_category5 {
    type: string
    sql: ${TABLE}.`items.item_category5` ;;
  }

  dimension: items_item_id {
    type: string
    sql: ${TABLE}.`items.item_id` ;;
  }

  dimension: items_item_list_id {
    type: string
    sql: ${TABLE}.`items.item_list_id` ;;
  }

  dimension: items_item_list_index {
    type: string
    sql: ${TABLE}.`items.item_list_index` ;;
  }

  dimension: items_item_list_name {
    type: string
    sql: ${TABLE}.`items.item_list_name` ;;
  }

  dimension: items_item_name {
    type: string
    sql: ${TABLE}.`items.item_name` ;;
  }

  dimension: items_item_refund {
    type: string
    sql: ${TABLE}.`items.item_refund` ;;
  }

  dimension: items_item_refund_in_usd {
    type: string
    sql: ${TABLE}.`items.item_refund_in_usd` ;;
  }

  dimension: items_item_revenue {
    type: string
    sql: ${TABLE}.`items.item_revenue` ;;
  }

  dimension: items_item_revenue_in_usd {
    type: string
    sql: ${TABLE}.`items.item_revenue_in_usd` ;;
  }

  dimension: items_item_variant {
    type: string
    sql: ${TABLE}.`items.item_variant` ;;
  }

  dimension: items_location_id {
    type: string
    sql: ${TABLE}.`items.location_id` ;;
  }

  dimension: items_price {
    type: string
    sql: ${TABLE}.`items.price` ;;
  }

  dimension: items_price_in_usd {
    type: string
    sql: ${TABLE}.`items.price_in_usd` ;;
  }

  dimension: items_promotion_id {
    type: string
    sql: ${TABLE}.`items.promotion_id` ;;
  }

  dimension: items_promotion_name {
    type: string
    sql: ${TABLE}.`items.promotion_name` ;;
  }

  dimension: items_quantity {
    type: string
    sql: ${TABLE}.`items.quantity` ;;
  }

  measure: count {
    type: count
    drill_fields: [items_creative_name, items_item_list_name, items_item_name, items_promotion_name]
  }
}
