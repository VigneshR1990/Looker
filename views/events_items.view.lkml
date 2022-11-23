view: events_items {
  sql_table_name: ecommerce.events_items ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: items_brand {
    type: string
    sql: ${TABLE}.`items.brand` ;;
  }

  dimension: items_category {
    type: string
    sql: ${TABLE}.`items.category` ;;
  }

  dimension: items_idx {
    type: number
    value_format_name: id
    sql: ${TABLE}.items_idx ;;
  }

  dimension: items_price {
    type: string
    sql: ${TABLE}.`items.price` ;;
  }

  dimension: items_product_id {
    type: string
    sql: ${TABLE}.`items.productId` ;;
  }

  dimension: items_product_name {
    type: string
    sql: ${TABLE}.`items.productName` ;;
  }

  dimension: items_quantity {
    type: string
    sql: ${TABLE}.`items.quantity` ;;
  }

  dimension: items_variant {
    type: string
    sql: ${TABLE}.`items.variant` ;;
  }

  measure: count {
    type: count
    drill_fields: [items_product_name]
  }
}
